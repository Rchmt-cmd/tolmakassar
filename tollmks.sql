-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: tollmks
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `active`
--
DROP DATABASE `tollmks`;
CREATE DATABASE `tollmks`;
USE `tollmks`;
DROP TABLE IF EXISTS `active`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `active` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `value` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active`
--

LOCK TABLES `active` WRITE;
/*!40000 ALTER TABLE `active` DISABLE KEYS */;
INSERT INTO `active` VALUES (1,'active',1),(2,'not active',0);
/*!40000 ALTER TABLE `active` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `add_to_home`
--

DROP TABLE IF EXISTS `add_to_home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `add_to_home` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nilai` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_to_home`
--

LOCK TABLES `add_to_home` WRITE;
/*!40000 ALTER TABLE `add_to_home` DISABLE KEYS */;
INSERT INTO `add_to_home` VALUES (1,'True'),(2,'False');
/*!40000 ALTER TABLE `add_to_home` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alamat_1`
--

DROP TABLE IF EXISTS `alamat_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alamat_1` (
  `id` int NOT NULL,
  `alamat` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alamat_1`
--

LOCK TABLES `alamat_1` WRITE;
/*!40000 ALTER TABLE `alamat_1` DISABLE KEYS */;
INSERT INTO `alamat_1` VALUES (1,'<h3>PT Makassar Metro Network</h3><h3>PT Jalan Tol Seksi Empat</h3><p><br></p><p>Menara Bosowa Lantai 4</p><p>Jalan Jenderal Sudirman No. 5, Makassar 90115, Sulawesi Selatan - Indonesia</p><p>Tel. +62 411 368 1035</p><p>Fax. +62 411 368 1038</p><p>Emergency Call. 1 500 722</p>','2021-08-01 11:54:54','2021-12-11 06:40:42');
/*!40000 ALTER TABLE `alamat_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_data`
--

DROP TABLE IF EXISTS `bank_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bank` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_data`
--

LOCK TABLES `bank_data` WRITE;
/*!40000 ALTER TABLE `bank_data` DISABLE KEYS */;
INSERT INTO `bank_data` VALUES (1,'BCA'),(2,'BNI'),(3,'BRI'),(4,'MANDIRI');
/*!40000 ALTER TABLE `bank_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text,
  `image` varchar(255) DEFAULT NULL,
  `menu` int DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL,
  `active` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (4,'foto1','uploads/7/2022-01/1.png',1,'',1,'2021-07-30 01:08:16'),(5,'foto3','uploads/6/2022-01/tol_layang_2.png',1,NULL,1,'2021-08-05 20:57:05'),(6,'foto4','uploads/6/2022-01/tol_layang3.png',1,NULL,1,'2021-08-05 21:04:25'),(11,'tol layang 4','uploads/6/2022-01/tol_layang4.png',1,NULL,1,'2022-01-13 07:35:18'),(14,'gerbang','uploads/7/2022-01/brk_large_custom.JPG',1,NULL,1,'2022-01-17 12:48:49'),(15,'Seksi 4','uploads/6/2022-01/img_2589_min_min.JPG',1,NULL,1,'2022-01-17 13:42:11'),(16,'Seksi 4','uploads/6/2022-01/img_2618_min.JPG',1,NULL,1,'2022-01-17 13:53:19'),(17,'seksi empat','uploads/6/2022-01/img_3171_min.JPG',1,NULL,1,'2022-01-17 13:53:48'),(18,'seksi iv','uploads/6/2022-01/img_2797_min.JPG',1,NULL,1,'2022-01-17 13:54:17');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billboard`
--

DROP TABLE IF EXISTS `billboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billboard` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `description` longtext,
  `specification` longtext,
  `active` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billboard`
--

LOCK TABLES `billboard` WRITE;
/*!40000 ALTER TABLE `billboard` DISABLE KEYS */;
INSERT INTO `billboard` VALUES (1,'KM 06+000 A (Arah Menuju Serpong / BSD)','uploads/3/2021-06/km06.jpg','-6.288170, 106.728246','Gambaran Lokasi : 500 meter dari gerbang tol Pondok Ranji menuju ke arah : \r\nGerbang tol Serpong - Kunciran - Bandara, Gerbang tol Serpong - Cinere, Keluar Tol Pamulang - Ciputat - Pasar Modern BSD City, Keluar Rawa Buntu - Cisauk - Serpong - BSD City','Tipe Media: Overbridge / Horizontal\r\nUkuran / Luas Media: 5m x 17m / 85 m2\r\nSpesifikasi Penerangan: 10 Lighting @ 50 Watt\r\nRata-rata Traffic per Bulan: 1,017,871',1,'2021-04-30 02:30:36',NULL,1),(2,'KM 06+400 A (Arah Menuju Serpong / BSD)','uploads/3/2021-06/km6400.jpg','-6.290330, 106.724227','Gambaran Lokasi : 100 meter setelah keluar tol Pamulang - Ciputat, menuju ke arah : Keluar Rawa Buntu - Cisauk - Serpong - BSD City','Tipe Media: Overbridge / Horizontal\r\nUkuran / Luas Media: 3 m x 20 m ( 60 m2 )\r\nSpesifikasi Penerangan: 10 Lighting @ 50 Watt\r\nRata-rata Traffic per Bulan: 1,017,871',1,'2021-06-19 00:43:38',NULL,2),(3,'KM 09+000 A (Arah Menuju Serpong / BSD)','uploads/3/2021-06/km9.jpg','-6.300786, 106.704484','Gambaran Lokasi : 200 meter setelah gerbang tol Serpong - Cinere dan Serpong - Kunciran - Bandara Soekarno Hatta menuju ke arah : Keluar Pamulang - Ciputat dan keluar Rawa Buntu - Cisauk - Serpong - BSD City','Tipe Media: Overbridge / Horizontal\r\nUkuran / Luas Media: 3 m x 20 m ( 60 m2 )\r\nSpesifikasi Penerangan: 12 Lighting @ 50 Watt\r\nRata-rata Traffic per Bulan: 1,017,871',1,'2021-06-19 00:44:38',NULL,1),(4,'KM 11+000 A (Arah Menuju Serpong / BSD)','uploads/3/2021-06/km11.jpg','-6.308646, 106.688217','Gambaran Lokasi : 100 meter setelah keluar tol Pamulang - Ciputat, menuju ke arah : Keluar Rawa Buntu - Cisauk - Serpong - BSD City','Tipe Media: Overbridge / Horizontal\r\nUkuran / Luas Media: 5m x 17m / 85 m2\r\nSpesifikasi Penerangan: 10 Lighting @ 50 Watt\r\nRata-rata Traffic per Bulan: 1,017,871',1,'2021-06-19 00:46:32',NULL,1),(5,'KM 11+200 A (Arah Menuju Serpong / BSD)','uploads/3/2021-06/km11200.jpg','-6.309328, 106.686356','Gambaran Lokasi : Menuju keluar tol ke arah Rawa Buntu - Cisauk - Serpong - BSD City','Tipe Media: Overbridge / Horizontal\r\nUkuran / Luas Media: 2m x 20m (40 m2)\r\nSpesifikasi Penerangan: 10 Lighting @ 50 Watt\r\nRata-rata Traffic per Bulan: 1,017,871',1,'2021-06-19 00:47:48',NULL,1),(6,'KM 08+200 B (Arah Menuju Bintaro - Tol JORR - Jakarta)','uploads/3/2021-06/km8200.jpg','-6.296041, 106.710150','Gambaran Lokasi : Menuju keluar tol ke arah Rawa Buntu - Cisauk - Serpong - BSD City','Tipe Media: Single Pole / Horizontal\r\nUkuran / Luas Media: 6m x 12m (72 m2)\r\nSpesifikasi Penerangan: 12 Lighting @ 100 Watt\r\nRata-rata Traffic per Bulan: 1,017,871',1,'2021-06-19 00:51:10',NULL,1),(7,'KM 06+200 B (Arah Menuju Bintaro - Tol JORR - Jakarta)','uploads/3/2021-06/km6200.jpg','-6.296041, 106.710150','Gambaran Lokasi : 500 meter sebelum exit tol Pondok Aren 1 menuju ke : Kawasan Bintaro Jaya, Mall B-Xchange, Toll Jorr dan Jakarta','Tipe Media: Single Pole / Horizontal\r\nUkuran / Luas Media: 4m x 6m (32 m2)\r\nSpesifikasi Penerangan: 4 Lighting @ 100 Watt\r\nRata-rata Traffic per Bulan: 1,017,871',1,'2021-06-19 00:52:24',NULL,2),(8,'KM 06+200 B (Gerbang Tol Pondok Aren 1 - Arah Menuju Bintaro - Ciputat)','uploads/3/2021-06/pab1.jpg','-6.296041, 106.710150','Gambaran Lokasi : Media iklan diatas exit gerbang Tol Pondok Aren 1, menuju ke Kawasan Bintaro Jaya, Bintaro X-Change, Ciputat','Tipe Media: Single Pole / Horizontal\r\nUkuran / Luas Media: 3m x 13m (39 m2)\r\nSpesifikasi Penerangan: 10 Lighting @ 50 Watt\r\nRata-rata Traffic per Bulan: 1,017,871',1,'2021-06-19 00:53:53',NULL,1),(9,'STA 0 + 00 (A)','uploads/1/2021-12/sta_0_00_a.jpg','-5.073133, 119.519155','Available','Tipe Media: Single Pole / Horizontal\r\nUkuran / Luas Media: 8 X 16 M2',1,'2021-06-19 00:54:52',NULL,1),(10,'Tes','uploads/1/2021-07/aeon.jpg','-6.282486, 106.736923','esdata','tesdata',1,'2021-07-31 01:18:26',NULL,1),(11,'STA 0 + 00 (B)','uploads/1/2021-12/sta_0_00_b.jpg','-5.076788, 119.512267','<p><span style=\"color: rgb(51, 51, 51); font-size: 12px;\">Available</span><br></p>','Tipe Media: Single Pole / vertical\r\nUkuran / Luas Media: 8 X 16 M2',1,'2021-12-12 10:58:25',NULL,1),(12,'STA 0 + 00 (TAMAN)','uploads/1/2021-12/sta_0_00_taman.jpg','-5.076788, 119.512267','<p>available</p>','Tipe Media: Single Pole / Horizontal\r\nUkuran / Luas Media: 6 X 12 M2',1,'2021-12-12 11:30:10',NULL,1),(13,'Gerbang Tol Cambaya','uploads/1/2021-12/gerbang_tol_cambaya.jpg','-5.0843316, 119.4912023','<p>Rent</p>','Tipe Media: Single Pole / Horizontal\r\nUkuran / Luas Media: 3m x 13m (39 m2)',1,'2021-12-12 11:43:30',NULL,2),(14,'1 + 920 (A)','uploads/1/2021-12/1_920_a.jpg','-5.088954, 119.480903','<p>Available</p>','Tipe Media: JPO\r\nUkuran / Luas Media: 2 X 20 M2',1,'2021-12-12 11:48:01',NULL,1),(15,'1 + 920 (B)','uploads/1/2021-12/1_920_b.jpg','-5.090279, 119.474294','<p>Available</p>','Tipe Media: JPO\r\nUkuran / Luas Media: 2 X 20 M2',1,'2021-12-12 12:17:10',NULL,1),(16,'Kalukubodoa (A)','uploads/1/2021-12/kalukubodoa_a.jpg','-5.094351, 119.467073','<p>-</p>','Tipe Media: JPO\r\nUkuran / Luas Media: 2 X 20 M2',1,'2021-12-12 12:34:51',NULL,1),(17,'Kalukubodoa (B)','uploads/1/2021-12/kalukubodoa_b.jpg','-5.100731, 119.460142','<p>-</p>','Tipe Media: JPO\r\nUkuran / Luas Media: 32 X 20 M2',1,'2021-12-12 12:38:37',NULL,1),(18,'Gerbang Tol Kalukubodoa','uploads/1/2021-12/gerbang_tol_kalukubodoa.jpg','-5.117444, 119.441773','<p>-</p>','Tipe Media: Billboard\r\nUkuran / Luas Media: 2 X 22 M2',1,'2021-12-12 12:41:56',NULL,2),(19,'4 + 200 AIPI (A)','uploads/1/2021-12/4_200_aipi_a.jpg','-5.109371, 119.445198','<p>-</p>','Tipe Media: JPO\r\nUkuran / Luas Media: 3m x 13m (39 m2)',1,'2021-12-12 13:26:20',NULL,2),(20,'4 + 200 AIPI (B)','uploads/1/2021-12/4_200_aipi_b.jpg','-5.112449, 119.438235','<p>-</p>','Tipe Media: JPO\r\nUkuran / Luas Media: 5 X 10 M2',1,'2021-12-12 13:31:14',NULL,2),(21,'GT BMN','uploads/1/2021-12/gt_bmn.jpg','-5.114630, 119.440517','<p>-</p>','Tipe Media: Branding Bullnoise',1,'2021-12-12 13:33:30',NULL,1),(22,'Jalan Tol Layang AP Pettarani','uploads/1/2021-12/jalan_tol_layang_ap_pettarani.jpg','-5.119524, 119.442357','<p>-</p>','Tipe Media: Billboard Tol Layang AP Pettarani 1\r\nUkuran / Luas Media: 19 x 5 m2',1,'2021-12-12 13:35:23',NULL,2),(23,'Jalan Tol Layang AP Pettarani 2','uploads/1/2021-12/jalan_tol_layang_ap_pettarani2.jpg','-5.123136, 119.441885','<p>-</p>','Tipe Media: Jalan Tol Layang AP Pettarani 2\r\nUkuran / Luas Media: 6 X 12 M2',1,'2021-12-12 13:36:37',NULL,1),(24,'Jalan Tol Layang AP Pettarani 3','uploads/1/2021-12/jalan_tol_layang_ap_pettarani3.jpg','-5.126668, 119.441182','<p>-&nbsp;&nbsp;&nbsp;&nbsp;</p>','Tipe Media: Jalan Tol Layang AP Pettarani 3\r\nUkuran / Luas Media: 6 X 12 M2',1,'2021-12-12 13:38:57',NULL,1),(25,'JPO BARAWAJA A','uploads/1/2021-12/jpo_barawaja_a.jpg','-5.128752, 119.440903','<p>-&nbsp;&nbsp;&nbsp;&nbsp;</p>','Tipe Media: Billboard Tol Layang AP Pettarani 4\r\nUkuran / Luas Media: 22 x 5 M2',1,'2021-12-12 13:39:38',NULL,1),(26,'JPO BARAWAJA B','uploads/1/2021-12/jpo_barawaja_b.jpg','-5.132097, 119.440474','<p>-</p>','Tipe Media: JPO Billboard Tol Layang AP Pettarani 5\r\nUkuran / Luas Media: 22 x 5 M2',1,'2021-12-12 13:40:51',NULL,1);
/*!40000 ALTER TABLE `billboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billboard_status`
--

DROP TABLE IF EXISTS `billboard_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billboard_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `value` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billboard_status`
--

LOCK TABLES `billboard_status` WRITE;
/*!40000 ALTER TABLE `billboard_status` DISABLE KEYS */;
INSERT INTO `billboard_status` VALUES (1,'available',1),(2,'occupied',0);
/*!40000 ALTER TABLE `billboard_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `call_center`
--

DROP TABLE IF EXISTS `call_center`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `call_center` (
  `id` int NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) DEFAULT NULL,
  `peraturan` longtext,
  `deskripsi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `call_center`
--

LOCK TABLES `call_center` WRITE;
/*!40000 ALTER TABLE `call_center` DISABLE KEYS */;
INSERT INTO `call_center` VALUES (1,'uploads/1/2022-01/img_3056.JPG','<p>1. Peraturan Menteri Pekerjaan Umum Republik Indonesia Nomor 16/PRT/M/2014. Tentang Standar Pelayanan Minimal Jalan Tol.</p><p>2. Peraturan Menteri pekerjaan Umum No. 27/PRT/M/2008 pasal 1 (1) Jalan Tol adalah jalan Umum yg merupakan bagian sistem jaringan jalan dan sebagai jalan Nasional yg penggunaannya diwajibkan membayar tol.</p>',NULL);
/*!40000 ALTER TABLE `call_center` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `call_center_child`
--

DROP TABLE IF EXISTS `call_center_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `call_center_child` (
  `id` int NOT NULL AUTO_INCREMENT,
  `foto` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `nomor` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `call_center_child`
--

LOCK TABLES `call_center_child` WRITE;
/*!40000 ALTER TABLE `call_center_child` DISABLE KEYS */;
INSERT INTO `call_center_child` VALUES (1,'uploads/1/2021-09/imgbin_police_car_patrol_police_officer_png.png','Patroli','-','','2021-07-31 23:32:01','2021-09-16 09:39:31'),(2,'uploads/1/2021-09/imgbin_car_door_tow_truck_towing_computer_icons_png.png','Derek','-','','2021-07-31 23:31:40','2021-09-16 09:39:39'),(3,'uploads/1/2021-09/lovepik_com_401471043_emergency_rescue_silhouette_after_the_earthquake.png','Rescue',NULL,NULL,'2021-09-16 02:36:32','2021-09-16 02:43:01'),(4,'uploads/1/2021-09/pngtree_vector_ambulance_icon_3989771.png','Ambulans','-','','2021-08-01 00:06:57','2021-09-16 02:43:24');
/*!40000 ALTER TABLE `call_center_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cctv`
--

DROP TABLE IF EXISTS `cctv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cctv` (
  `id` int NOT NULL AUTO_INCREMENT,
  `port` int NOT NULL,
  `titik_cctv` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cctv`
--

LOCK TABLES `cctv` WRITE;
/*!40000 ALTER TABLE `cctv` DISABLE KEYS */;
INSERT INTO `cctv` VALUES (1,8080,'KM 5+500'),(2,8081,'Off Ramp Pondok Aren'),(3,8082,'On Ramp Pondok Aren'),(4,8083,'KM 6+600'),(5,8084,'KM 7+200'),(6,8085,'KM 7+600'),(7,8086,'KM 8+075'),(8,8087,'KM 8+200'),(9,8088,'KM 8+700'),(10,8089,'KM 9+200'),(11,8090,'KM 9+700'),(12,8091,'KM 10+500'),(13,8092,'KM 11+000'),(14,8093,'KM 11+500'),(15,8094,'KM 12+000'),(16,8095,'ROW 40 Ramp C'),(17,8096,'Kolong ROW 40'),(18,8097,'ROW 40 Ramp A'),(19,8098,'KM 6+100'),(20,8099,'ROW 30'),(21,8100,'ROW 30 Bak'),(22,8101,'KM 10+000'),(23,8102,'JPO Pondok Aren');
/*!40000 ALTER TABLE `cctv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cctv_list`
--

DROP TABLE IF EXISTS `cctv_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cctv_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `id_stream` varchar(255) DEFAULT NULL,
  `rtsp` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cctv_list`
--

LOCK TABLES `cctv_list` WRITE;
/*!40000 ALTER TABLE `cctv_list` DISABLE KEYS */;
INSERT INTO `cctv_list` VALUES (1,'5+500','IDName1','rtsp://admin:dcttotal2019@36.67.188.241:558/LiveChannel/0/media.smp','road','hajkghajklhak','2021-11-05 10:08:03','2021-11-06 01:28:08'),(2,'6+100','IDName2','rtsp://admin:dcttotal2019@36.67.188.241:558/LiveChannel/1/media.smp','road','abmfakjgbakga','2021-11-06 01:12:26','2021-11-06 01:51:19'),(3,'6+200','IDName3','rtsp://admin:dcttotal2019@36.67.188.241:558/LiveChannel/2/media.smp','road','hajkghajklhak','2021-11-06 01:12:57','2021-11-06 01:51:22'),(4,'6+600','IDName4','rtsp://admin:dcttotal2019@36.67.188.241:558/LiveChannel/3/media.smp','road','hajkghajklhak','2021-11-06 01:12:59','2021-11-06 01:51:25'),(5,'7+200','IDName5','rtsp://admin:dcttotal2019@36.67.188.241:558/LiveChannel/4/media.smp','road','hajkghajklhak','2021-11-06 01:12:59','2021-11-06 10:40:41'),(6,'7+600','IDName6','rtsp://admin:dcttotal2019@36.67.188.241:558/LiveChannel/5/media.smp','road','hajkghajklhak','2021-11-06 01:13:00','2021-11-06 10:40:43'),(7,'8+075','IDName7','rtsp://admin:dcttotal2019@36.67.188.241:558/LiveChannel/6/media.smp','road','hajkghajklhak','2021-11-06 01:13:01','2021-11-06 10:40:49'),(8,'8+200','IDName8','rtsp://admin:dcttotal2019@36.67.188.241:558/LiveChannel/7/media.smp','road','hajkghajklhak','2021-11-06 01:13:01','2021-11-06 10:40:52'),(9,'8+700','IDName9','rtsp://admin:dcttotal2019@36.67.188.241:558/LiveChannel/8/media.smp','road','hajkghajklhak','2021-11-06 01:13:02','2021-11-06 10:40:55'),(10,'9+200','IDName10','rtsp://admin:dcttotal2019@36.67.188.241:558/LiveChannel/9/media.smp','road','hajkghajklhak','2021-11-06 01:13:02','2021-11-06 10:40:59'),(11,'9+700','IDName11','rtsp://admin:dcttotal2019@36.67.188.241:558/LiveChannel/10/media.smp','road','hajkghajklhak','2021-11-06 01:13:03','2021-11-06 10:41:04'),(12,'10+000','IDName12','rtsp://admin:dcttotal2019@36.67.188.241:558/LiveChannel/11/media.smp','road','hajkghajklhak','2021-11-06 01:13:03','2021-11-06 10:41:08'),(13,'10+500','IDName13','rtsp://admin:dcttotal2019@36.67.188.241:558/LiveChannel/12/media.smp','road','hajkghajklhak','2021-11-06 01:13:04','2021-11-06 10:41:15'),(14,'11+000','IDName14','rtsp://admin:dcttotal2019@36.67.188.241:558/LiveChannel/13/media.smp','road','hajkghajklhak','2021-11-06 01:13:05','2021-11-06 10:41:21'),(15,'11+500','IDName15','rtsp://admin:dcttotal2019@36.67.188.241:558/LiveChannel/14/media.smp','road','hajkghajklhak','2021-11-06 01:13:05','2021-11-06 10:41:25'),(16,'12+000','IDName16','rtsp://admin:dcttotal2019@36.67.188.241:558/LiveChannel/15/media.smp','road','hajkghajklhak','2021-11-06 01:13:06','2021-11-06 10:41:30'),(17,'ROW 40C','IDName17','rtsp://admin:dcttotal2019@36.67.188.241:558/LiveChannel/22/media.smp','road','hajkghajklhak','2021-11-06 01:13:06','2021-12-01 15:45:10'),(18,'ROW 40','IDName18','rtsp://admin:dcttotal2019@36.67.188.241:558/LiveChannel/26/media.smp','road','hajkghajklhak','2021-11-06 01:13:07','2021-12-01 15:45:15');
/*!40000 ALTER TABLE `cctv_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_apicustom`
--

DROP TABLE IF EXISTS `cms_apicustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_apicustom` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `permalink` varchar(255) DEFAULT NULL,
  `tabel` varchar(255) DEFAULT NULL,
  `aksi` varchar(255) DEFAULT NULL,
  `kolom` varchar(255) DEFAULT NULL,
  `orderby` varchar(255) DEFAULT NULL,
  `sub_query_1` varchar(255) DEFAULT NULL,
  `sql_where` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `parameter` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) DEFAULT NULL,
  `parameters` longtext,
  `responses` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_apicustom`
--

LOCK TABLES `cms_apicustom` WRITE;
/*!40000 ALTER TABLE `cms_apicustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_apicustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_apikey`
--

DROP TABLE IF EXISTS `cms_apikey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_apikey` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(255) DEFAULT NULL,
  `hit` int DEFAULT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_apikey`
--

LOCK TABLES `cms_apikey` WRITE;
/*!40000 ALTER TABLE `cms_apikey` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_apikey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_dashboard`
--

DROP TABLE IF EXISTS `cms_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_dashboard` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `id_cms_privileges` int DEFAULT NULL,
  `content` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_dashboard`
--

LOCK TABLES `cms_dashboard` WRITE;
/*!40000 ALTER TABLE `cms_dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_email_queues`
--

DROP TABLE IF EXISTS `cms_email_queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_email_queues` (
  `id` int unsigned NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) DEFAULT NULL,
  `email_from_email` varchar(255) DEFAULT NULL,
  `email_from_name` varchar(255) DEFAULT NULL,
  `email_cc_email` varchar(255) DEFAULT NULL,
  `email_subject` varchar(255) DEFAULT NULL,
  `email_content` text,
  `email_attachments` text,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_email_queues`
--

LOCK TABLES `cms_email_queues` WRITE;
/*!40000 ALTER TABLE `cms_email_queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_email_queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_email_templates`
--

DROP TABLE IF EXISTS `cms_email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_email_templates` (
  `id` int unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `content` longtext,
  `description` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `from_email` varchar(255) DEFAULT NULL,
  `cc_email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_email_templates`
--

LOCK TABLES `cms_email_templates` WRITE;
/*!40000 ALTER TABLE `cms_email_templates` DISABLE KEYS */;
INSERT INTO `cms_email_templates` VALUES (1,'Email Template Forgot Password Backend','forgot_password_backend',NULL,'<p>Hi,</p><p>Someone requested forgot password, here is your new password :ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>','[password]','System','system@crudbooster.com',NULL,'2021-04-27 06:40:43',NULL);
/*!40000 ALTER TABLE `cms_email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_logs`
--

DROP TABLE IF EXISTS `cms_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_logs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) DEFAULT NULL,
  `useragent` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `details` text,
  `id_cms_users` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_logs`
--

LOCK TABLES `cms_logs` WRITE;
/*!40000 ALTER TABLE `cms_logs` DISABLE KEYS */;
INSERT INTO `cms_logs` VALUES (1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','http://makassartoll.test:82/admin/login','admin@bsdtoll.com login with IP Address 127.0.0.1','',1,'2021-12-16 10:02:26',NULL),(2,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','http://makassartoll.test:82/admin/users/add-save','Add New Data Admin Makassar at Users Management','',1,'2021-12-16 10:03:56',NULL),(3,'192.168.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36 OPR/82.0.4227.23','http://emestech.host/makassartoll/public/admin/login','admin@mks.com login with IP Address 192.168.0.1','',5,'2021-12-16 16:54:56',NULL),(4,'192.168.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36 OPR/82.0.4227.23','http://emestech.host/makassartoll/public/admin/info_tarif57/edit-save/15','Update data  at Info Tarif','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>gerbang</td><td>Gerbang Parangloe & Ramp Parangloe</td><td>Gerbang Parangloe</td></tr><tr><td>location</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr></tbody></table>',5,'2021-12-16 16:55:32',NULL),(5,'192.168.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','http://emestech.host/makassartoll/public/admin/login','admin@bsdtoll.com login with IP Address 192.168.0.1','',1,'2021-12-21 04:50:37',NULL),(6,'222.124.102.44','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/users/add-save','Add New Data NTR at Users Management','',1,'2022-01-12 11:20:28',NULL),(7,'222.124.102.44','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/logout','admin@bsdtoll.com logout','',1,'2022-01-12 11:20:41',NULL),(8,'222.124.102.44','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/login','ntr@tolmakassar.com login with IP Address 222.124.102.44','',7,'2022-01-12 11:20:55',NULL),(9,'222.124.102.44','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/logout','ntr@tolmakassar.com logout','',7,'2022-01-12 11:22:06',NULL),(10,'222.124.102.44','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/login','admin@bsdtoll.com login with IP Address 222.124.102.44','',1,'2022-01-12 11:22:18',NULL),(11,'222.124.102.44','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/menu_management/edit-save/35','Update data Banner at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>37</td><td></td></tr></tbody></table>',1,'2022-01-12 11:24:37',NULL),(12,'222.124.102.44','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/menu_management/edit-save/38','Update data Sejarah Perusahaan at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>39</td><td></td></tr></tbody></table>',1,'2022-01-12 11:25:01',NULL),(13,'222.124.102.44','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/menu_management/edit-save/41','Update data Profil Perusahaan at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Profile BSD</td><td>Profil Perusahaan</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>39</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>',1,'2022-01-12 11:25:23',NULL),(14,'222.124.102.44','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/menu_management/edit-save/42','Update data Visi & Misi at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>39</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>',1,'2022-01-12 11:25:35',NULL),(15,'222.124.102.44','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/menu_management/edit-save/44','Update data Struktur Perusahaan at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Struktur BSD</td><td>Struktur Perusahaan</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>39</td><td></td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>',1,'2022-01-12 11:25:51',NULL),(16,'222.124.102.44','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/menu_management/edit-save/45','Update data Sertifikat Perusahaan at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Sertifikat BSD</td><td>Sertifikat Perusahaan</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>39</td><td></td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>',1,'2022-01-12 11:26:05',NULL),(17,'222.124.102.44','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/menu_management/edit-save/43','Update data Nilai Perusahaan at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>39</td><td></td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>',1,'2022-01-12 11:26:16',NULL),(18,'222.124.102.44','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/menu_management/edit-save/58','Update data Info Tarif Tol at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Info Tarif</td><td>Info Tarif Tol</td></tr><tr><td>parent_id</td><td>57</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>',1,'2022-01-12 11:26:41',NULL),(19,'222.124.102.44','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/menu_management/edit-save/61','Update data Call Center at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>57</td><td></td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>',1,'2022-01-12 11:26:51',NULL),(20,'222.124.102.44','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/menu_management/edit-save/48','Update data Lokasi Terdekat at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>',1,'2022-01-12 11:27:02',NULL),(21,'222.124.102.44','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/menu_management/edit-save/52','Update data Media at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>',1,'2022-01-12 11:27:09',NULL),(22,'222.124.102.44','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/menu_management/edit-save/54','Update data Billboard at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>52</td><td></td></tr></tbody></table>',1,'2022-01-12 11:27:20',NULL),(23,'222.124.102.44','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/menu_management/edit-save/50','Update data Alamat at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>51</td><td></td></tr></tbody></table>',1,'2022-01-12 11:27:40',NULL),(24,'222.124.102.44','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/menu_management/edit-save/49','Update data Sosial Media at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>51</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>',1,'2022-01-12 11:27:48',NULL),(25,'222.124.102.44','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/menu_management/edit-save/62','Update data Tender at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>',1,'2022-01-12 11:27:56',NULL),(26,'222.124.102.44','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/logout','admin@bsdtoll.com logout','',1,'2022-01-12 11:28:05',NULL),(27,'222.124.102.44','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/login','ntr@tolmakassar.com login with IP Address 222.124.102.44','',7,'2022-01-12 11:28:20',NULL),(28,'222.124.102.44','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/alamat_152','Try view the data :name at Alamat','',7,'2022-01-12 11:46:03',NULL),(29,'222.124.102.44','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/logout','ntr@tolmakassar.com logout','',7,'2022-01-12 11:48:02',NULL),(30,'125.161.221.194','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/login','marcom@tolmakassar.com login with IP Address 125.161.221.194','',6,'2022-01-12 12:04:49',NULL),(31,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/banner39/delete-image','Delete the image of Test at Banner','',6,'2022-01-12 13:24:34',NULL),(32,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/login','ntr@tolmakassar.com login with IP Address 103.30.182.234','',7,'2022-01-12 13:35:28',NULL),(33,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/call_center60','Try view the data :name at Call Center','',7,'2022-01-12 13:35:58',NULL),(34,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/alamat_152','Try view the data :name at Alamat','',7,'2022-01-12 13:37:16',NULL),(35,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/login','marcom@tolmakassar.com login with IP Address 103.30.182.234','',6,'2022-01-12 13:44:22',NULL),(36,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/delete-image','Delete the image of Rangkaian kegiatan Vaksinasi Covid-19 Karyawan PT Bintaro Serpong Damai at Media','',6,'2022-01-12 13:57:30',NULL),(37,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/edit-save/19','Update data RAPAT KOORDINASI PT Makassar Metro Network - PT Jalan Tol Seksi Empat bersama DITLANTAS POLDA SULSEL at Media','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title</td><td>Rangkaian kegiatan Vaksinasi Covid-19 Karyawan PT Bintaro Serpong Damai</td><td>RAPAT KOORDINASI PT Makassar Metro Network - PT Jalan Tol Seksi Empat bersama DITLANTAS POLDA SULSEL</td></tr><tr><td>konten</td><td>Tangerang (19/7/2021) - PT Bintaro Serpong Damai mengadakan rangkaian kegiatan vaksinasi Covid-19 yang dilakukan selama dua hari yakni pada hari Kamis (15/7) dan Jumat (16/7). Rangkaian kegiatan acara tersebut di awali dengan sosialisasi mengenai vaksin pada hari kamis (15/7), dengan mengadakan seminar melalui aplikasi Zoom bagi para karyawan PT Bintaro Serpong Damai. Kegiatan seminar dengan tema ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã¢â‚¬Å“Tanya Jawab Seputar Vaksinasi Covid-19ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â yang bekerja sama dengan RS Bethsaida bersama dr. Radite Nusasenjaya, MKK, Sp.OK sebagai Narasumber. Dalam acara seminar tersebut dokter Radite Nusasenjaya menegaskan bahwa dengan dilakukannya vaksinasi akan membantu terbentuknya kekebalan kelompok (Herd Immunity) yang mana akan mengurangi penyebaran virus Covid-19.  \r\nPelaksanaan vaksinasi di lakukan pada hari kedua, yakni pada hari jumat (16/7). Kegiatan vaksinasi pertama ini difokuskan untuk pemberian vaksin kepada karyawan PT Bintaro Serpong Damai. Hal ini dilakukan untuk menjamin keamanan dan kenyamanan karyawan agar selalu siap dan sehat dalam melayani pengguna jalan Tol BSD.  \r\nSelain itu, dengan dilakukannya kegiatan Vaksinasi ini merupakan salah satu Langkah dukungan PT Bintaro Serpong Damai dalam membantu pemerintah untuk memutus rantai penyebaran virus Covid-19.</td><td>DASFGGFGHKLUIO,4WN6YBET4W</td></tr><tr><td>image</td><td></td><td>uploads/6/2022-01/golkar_latar_putih.jpg</td></tr></tbody></table>',6,'2022-01-12 14:01:59',NULL),(38,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/logout','ntr@tolmakassar.com logout','',7,'2022-01-12 14:04:55',NULL),(39,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/login','ntr@tolmakassar.com login with IP Address 103.30.182.234','',7,'2022-01-12 14:05:35',NULL),(40,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/logout','marcom@tolmakassar.com logout','',6,'2022-01-12 14:08:34',NULL),(41,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/login','ntr@tolmakassar.com login with IP Address 103.30.182.234','',7,'2022-01-12 14:09:17',NULL),(42,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/banner39/delete/3','Delete data banner 8 at Banner','',7,'2022-01-12 14:11:55',NULL),(43,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/banner39/delete/2','Delete data Test at Banner','',7,'2022-01-12 14:12:00',NULL),(44,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/edit-save/16','Update data  at Info Tarif','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>golongan1</td><td>3000</td><td>4000</td></tr><tr><td>golongan4</td><td>6500</td><td>8000</td></tr><tr><td>golongan5</td><td>6500</td><td>8000</td></tr><tr><td>total1</td><td>3000</td><td>4000</td></tr><tr><td>total4</td><td>6500</td><td>8000</td></tr><tr><td>total5</td><td>6500</td><td>8000</td></tr><tr><td>location</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr></tbody></table>',7,'2022-01-12 14:16:39',NULL),(45,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/edit-save/15','Update data  at Info Tarif','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>golongan1</td><td>4000</td><td>10000</td></tr><tr><td>golongan2</td><td>5500</td><td>14000</td></tr><tr><td>golongan3</td><td>5500</td><td>14000</td></tr><tr><td>golongan4</td><td>9000</td><td>19000</td></tr><tr><td>golongan5</td><td>9000</td><td>19000</td></tr><tr><td>total1</td><td>4000</td><td>1000</td></tr><tr><td>total2</td><td>5500</td><td>14000</td></tr><tr><td>total3</td><td>5500</td><td>14000</td></tr><tr><td>total4</td><td>9000</td><td>19000</td></tr><tr><td>total5</td><td>9000</td><td>19000</td></tr><tr><td>location</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr></tbody></table>',7,'2022-01-12 14:18:26',NULL),(46,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/edit-save/11','Update data  at Info Tarif','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>golongan1</td><td>4000</td><td>10000</td></tr><tr><td>golongan2</td><td>5500</td><td>14000</td></tr><tr><td>golongan3</td><td>5500</td><td>14000</td></tr><tr><td>golongan4</td><td>9000</td><td>19000</td></tr><tr><td>golongan5</td><td>9000</td><td>19000</td></tr><tr><td>total1</td><td>4000</td><td>10000</td></tr><tr><td>total2</td><td>5500</td><td>14000</td></tr><tr><td>total3</td><td>5500</td><td>14000</td></tr><tr><td>total4</td><td>9000</td><td>19000</td></tr><tr><td>total5</td><td>9000</td><td>19000</td></tr><tr><td>location</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr></tbody></table>',7,'2022-01-12 14:19:47',NULL),(47,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/edit-save/12','Update data  at Info Tarif','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>golongan1</td><td>4000</td><td>10000</td></tr><tr><td>golongan2</td><td>5500</td><td>14000</td></tr><tr><td>golongan3</td><td>5500</td><td>14000</td></tr><tr><td>golongan4</td><td>9000</td><td>19000</td></tr><tr><td>golongan5</td><td>9000</td><td>19000</td></tr><tr><td>total1</td><td>4000</td><td>10000</td></tr><tr><td>total2</td><td>5500</td><td>14000</td></tr><tr><td>total3</td><td>5500</td><td>14000</td></tr><tr><td>total4</td><td>9000</td><td>19000</td></tr><tr><td>total5</td><td>9000</td><td>19000</td></tr><tr><td>location</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr></tbody></table>',7,'2022-01-12 14:20:34',NULL),(48,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/edit-save/14','Update data  at Info Tarif','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>golongan1</td><td>4000</td><td>10000</td></tr><tr><td>golongan2</td><td>5500</td><td>14000</td></tr><tr><td>golongan3</td><td>5500</td><td>14000</td></tr><tr><td>golongan4</td><td>9000</td><td>19000</td></tr><tr><td>golongan5</td><td>9000</td><td>19000</td></tr><tr><td>total1</td><td>4000</td><td>10000</td></tr><tr><td>total2</td><td>5500</td><td>14000</td></tr><tr><td>total3</td><td>5500</td><td>14000</td></tr><tr><td>total4</td><td>9000</td><td>19000</td></tr><tr><td>total5</td><td>9000</td><td>19000</td></tr><tr><td>location</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr></tbody></table>',7,'2022-01-12 14:21:26',NULL),(49,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/edit-save/15','Update data  at Info Tarif','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>total1</td><td>1000</td><td>10000</td></tr><tr><td>location</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr></tbody></table>',7,'2022-01-12 14:21:48',NULL),(50,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/add-save','Add New Data  at Info Tarif','',7,'2022-01-12 14:24:06',NULL),(51,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/edit-save/1','Update data  at Info Tarif','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>',7,'2022-01-12 14:25:57',NULL),(52,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/edit-save/1','Update data  at Info Tarif','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/7/2022-01/gerbang_parangloe_ramp_parangloe.jpeg</td></tr><tr><td>location</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr></tbody></table>',7,'2022-01-12 14:27:23',NULL),(53,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/edit-save/1','Update data  at Info Tarif','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>location</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr></tbody></table>',7,'2022-01-12 14:28:54',NULL),(54,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/edit-save/1','Update data  at Info Tarif','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>location</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr></tbody></table>',7,'2022-01-12 14:29:59',NULL),(55,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/delete-image','Delete the image of RAPAT KOORDINASI PT Makassar Metro Network - PT Jalan Tol Seksi Empat bersama DITLANTAS POLDA SULSEL at Media','',6,'2022-01-12 14:32:06',NULL),(56,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/logout','ntr@tolmakassar.com logout','',7,'2022-01-12 14:33:53',NULL),(57,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/edit-save/19','Update data Direktorat Lalu Lintas Polda Sulsel bersama Managemen PT Makassar Metro Network - PT Jalan Tol Seksi Empat melaksanakan Rapat Koordinasi pengamanan Jalan Tol Makassar. at Media','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title</td><td>RAPAT KOORDINASI PT Makassar Metro Network - PT Jalan Tol Seksi Empat bersama DITLANTAS POLDA SULSEL</td><td>Direktorat Lalu Lintas Polda Sulsel bersama Managemen PT Makassar Metro Network - PT Jalan Tol Seksi Empat melaksanakan Rapat Koordinasi pengamanan Jalan Tol Makassar.</td></tr><tr><td>konten</td><td>DASFGGFGHKLUIO,4WN6YBET4W</td><td>Makassar, 10 Januari 2021, Dirtektorat Lalu lintas Polda Sulsel bersama BUJT Makassar melaksanakan rapat koordinasi dalam rangka pengamanan jalan tol, salah satu yang menjadi pembahasan adalah rombongan pengantar jenasah yang menggunakan kendaraan Roda dua melalui akses jalan tol.\r\nDalam rapat koordinasi tersebut dipimpin oleh langsung oleh DIrektur Lalu Lintas Polda Sulsel Komisaris Besar Polisi Faizal Sik. MH, dihadiri oleh jajaran DIreksi PPT Makassar Metro Network - PT Jalan Tol Seksi Empat  Anwar Toha Direktur Utama PT Makassar Metro Network, Real Chandra Direktur Komersil PT Makassar Metro Network - PT Jalan Tol Seksi Empat beserta staf dan juga para PJU Ditlantas Polda Sulsel.</td></tr><tr><td>image</td><td></td><td>uploads/6/2022-01/20220110_105420.jpg</td></tr></tbody></table>',6,'2022-01-12 14:34:22',NULL),(58,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/edit-save/19','Update data RAPAT KOORDINASI Direktorat Lalu Lintas Polda Sulsel bersama Managemen PT MMN-PT JTSE at Media','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title</td><td>Direktorat Lalu Lintas Polda Sulsel bersama Managemen PT Makassar Metro Network - PT Jalan Tol Seksi Empat melaksanakan Rapat Koordinasi pengamanan Jalan Tol Makassar.</td><td>RAPAT KOORDINASI Direktorat Lalu Lintas Polda Sulsel bersama Managemen PT MMN-PT JTSE</td></tr></tbody></table>',6,'2022-01-12 14:35:54',NULL),(59,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/edit-save/19','Update data RAPAT KOORDINASI Direktorat Lalu Lintas Polda Sulsel bersama Managemen PT MMN-PT JTSE at Media','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>',6,'2022-01-12 14:36:14',NULL),(60,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/alamat_152','Try view the data :name at Alamat','',7,'2022-01-12 14:37:05',NULL),(61,'36.67.188.241','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/login','admin@bsdtoll.com login with IP Address 36.67.188.241','',1,'2022-01-12 14:37:17',NULL),(62,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/delete-image','Delete the image of RAPAT KOORDINASI Direktorat Lalu Lintas Polda Sulsel bersama Managemen PT MMN-PT JTSE at Media','',6,'2022-01-12 14:38:14',NULL),(63,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/edit-save/19','Update data RakorI Ditlantas  Polda Sulsel bersama PT MMN-PT JTSE at Media','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title</td><td>RAPAT KOORDINASI Direktorat Lalu Lintas Polda Sulsel bersama Managemen PT MMN-PT JTSE</td><td>RakorI Ditlantas  Polda Sulsel bersama PT MMN-PT JTSE</td></tr><tr><td>image</td><td></td><td>uploads/6/2022-01/20220110_105420.jpg</td></tr></tbody></table>',6,'2022-01-12 14:59:44',NULL),(64,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/delete-image','Delete the image of RakorI Ditlantas  Polda Sulsel bersama PT MMN-PT JTSE at Media','',6,'2022-01-12 15:00:21',NULL),(65,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/media49/add-save','Add New Data Gerbang Tol at Media','',7,'2022-01-12 15:01:43',NULL),(66,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/media49/delete/7','Delete data Podcast dan Charity Ramadan BSD Tol at Media','',7,'2022-01-12 15:02:41',NULL),(67,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/media49/delete/18','Delete data Pelaksanaan Acara Rapat Umum Pemegang Saham Tahunan\r\nTahun Buku 2020 at Media','',7,'2022-01-12 15:02:48',NULL),(68,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/media49/delete/17','Delete data Manajemen Tol BSD Lakukan Penghijauan di Area Tol / BSD Toll Management Performs Reforestation in Toll Areas at Media','',7,'2022-01-12 15:02:52',NULL),(69,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/media49/delete/16','Delete data OPERASI ODOL Dl RUAS TOL PONDOK AREN SERPONG at Media','',7,'2022-01-12 15:02:56',NULL),(70,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/media49/delete/15','Delete data Mulai 31 Januari, Tarif Tol Pondok Aren-Serpong Naik at Media','',7,'2022-01-12 15:02:59',NULL),(71,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/media49/delete/14','Delete data Dukung Pertumbuhan Ekonomi Daerah, Tol BSD Beri Kontribusi Melalui Pembangunan Infrastruktur di Tangerang Selatan at Media','',7,'2022-01-12 15:03:03',NULL),(72,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/media49/delete/12','Delete data Tanggap Covid-19, PT Bintaro Serpong Damai (BSD Tol) dan Sari Roti Bagikan Sembako dan Ribuan Roti pada Masyarakat Sekitar at Media','',7,'2022-01-12 15:03:07',NULL),(73,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/media49/delete/11','Delete data Sumbangan Bakti Sosial untuk Masyarakat yang Terdampak Covid BSD Tol Bersama Polda Metro Jaya at Media','',7,'2022-01-12 15:03:12',NULL),(74,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/media49/delete/13','Delete data Pelaksanaan Acara Audiensi dengan Walikota Tangerang Selatan at Media','',7,'2022-01-12 15:03:15',NULL),(75,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/media49/delete/9','Delete data PEDULI PENGHIJAUAN DAN KELESTARIAN LINGKUNGAN, BSD TOL LAKUKAN PENANAMAN POHON BERSAMA at Media','',7,'2022-01-12 15:03:18',NULL),(76,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/media49/delete/10','Delete data Sumbangan Bakti Sosial untuk Masyarakat yang Terdampak Banjir at Media','',7,'2022-01-12 15:03:21',NULL),(77,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/media49/delete/8','Delete data Pelaksanaan Acara Kurban PT Bintaro Serpong Damai\r\n\"Berbagi dan Meneguhkan Niat, Tebar Kebaikan\" at Media','',7,'2022-01-12 15:03:24',NULL),(78,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/add-save','Add New Data RAKOR Ditlantas Polda Sulsel bersama Managemern PT MMN-PT JTSE at Media','',6,'2022-01-12 15:03:50',NULL),(79,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/media49/add-save','Add New Data Jalan Tol at Media','',7,'2022-01-12 15:04:17',NULL),(80,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/edit-save/19','Update data Rakor Ditlantas  Polda Sulsel bersama PT MMN-PT JTSE at Media','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title</td><td>RakorI Ditlantas  Polda Sulsel bersama PT MMN-PT JTSE</td><td>Rakor Ditlantas  Polda Sulsel bersama PT MMN-PT JTSE</td></tr><tr><td>image</td><td></td><td>uploads/6/2022-01/20220110_095935.jpg</td></tr></tbody></table>',6,'2022-01-12 15:04:31',NULL),(81,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/delete/19','Delete data Rakor Ditlantas  Polda Sulsel bersama PT MMN-PT JTSE at Media','',6,'2022-01-12 15:04:51',NULL),(82,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/edit-save/2','Update data Rapat Koordinasi  Ditlantas Polda Sulsel bersama Managemen PT MMN-PT JTSE at Media','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title</td><td>RAKOR Ditlantas Polda Sulsel bersama Managemern PT MMN-PT JTSE</td><td>Rapat Koordinasi  Ditlantas Polda Sulsel bersama Managemen PT MMN-PT JTSE</td></tr></tbody></table>',6,'2022-01-12 15:05:52',NULL),(83,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/sejarah_perusahaan/edit-save/11','Update data Installation of variable message sign (VMS) and closed circuit television (CCTV). at Sejarah Perusahaan','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>active</td><td>2</td><td>1</td></tr></tbody></table>',7,'2022-01-12 15:08:48',NULL),(84,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/sejarah_perusahaan/edit-save/12','Update data Integrated traffic control system. at Sejarah Perusahaan','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>active</td><td>2</td><td>1</td></tr></tbody></table>',7,'2022-01-12 15:08:58',NULL),(85,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/sejarah_perusahaan/edit-save/16','Update data traffic audio announcer. at Sejarah Perusahaan','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>active</td><td>2</td><td>1</td></tr></tbody></table>',7,'2022-01-12 15:09:06',NULL),(86,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/sejarah_perusahaan/edit-save/15','Update data Centralize Hybrid Toll Collection System. at Sejarah Perusahaan','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>active</td><td>2</td><td>1</td></tr></tbody></table>',7,'2022-01-12 15:09:14',NULL),(87,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/sejarah_perusahaan/edit-save/14','Update data toll rate adjustment. at Sejarah Perusahaan','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>active</td><td>2</td><td>1</td></tr></tbody></table>',7,'2022-01-12 15:09:20',NULL),(88,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/sejarah_perusahaan/edit-save/13','Update data nursery area for plant seeds. at Sejarah Perusahaan','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>active</td><td>2</td><td>1</td></tr></tbody></table>',7,'2022-01-12 15:09:26',NULL),(89,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/add-save','Add New Data Quality Control Circle (QCC) Competition and Direct Improvement Session 2021 at Media','',6,'2022-01-12 15:13:55',NULL),(90,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/edit-save/4','Update data Quality Control Circle (QCC) Competition and Direct Improvement Session 2021 at Media','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>kategori_media</td><td></td><td></td></tr></tbody></table>',6,'2022-01-12 15:14:54',NULL),(91,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/edit-save/4','Update data Quality Control Circle (QCC) Competition and Direct Improvement Session 2021 at Media','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>kategori_media</td><td></td><td>2</td></tr></tbody></table>',6,'2022-01-12 15:15:53',NULL),(92,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/delete/1','Delete data Gerbang Tol at Media','',6,'2022-01-12 15:18:03',NULL),(93,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/delete/3','Delete data Jalan Tol at Media','',6,'2022-01-12 15:18:12',NULL),(94,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/add-save','Add New Data Cofee Morning Management bersama Pejabat Utama DItlantas Polda Sulsel at Media','',6,'2022-01-12 15:37:00',NULL),(95,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/sejarah_perusahaan/delete/16','Delete data traffic audio announcer. at Sejarah Perusahaan','',6,'2022-01-12 15:38:19',NULL),(96,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/sejarah_perusahaan/delete/15','Delete data Centralize Hybrid Toll Collection System. at Sejarah Perusahaan','',6,'2022-01-12 15:38:23',NULL),(97,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/sejarah_perusahaan/delete/14','Delete data toll rate adjustment. at Sejarah Perusahaan','',6,'2022-01-12 15:38:25',NULL),(98,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/sejarah_perusahaan/delete/13','Delete data nursery area for plant seeds. at Sejarah Perusahaan','',6,'2022-01-12 15:38:28',NULL),(99,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/sejarah_perusahaan/delete/12','Delete data Integrated traffic control system. at Sejarah Perusahaan','',6,'2022-01-12 15:38:30',NULL),(100,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/sejarah_perusahaan/delete/11','Delete data Installation of variable message sign (VMS) and closed circuit television (CCTV). at Sejarah Perusahaan','',6,'2022-01-12 15:38:33',NULL),(101,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/sejarah_perusahaan/delete/10','Delete data 100% Implemented of e-payment system/transaction cashless system at each toll gate. at Sejarah Perusahaan','',6,'2022-01-12 15:38:36',NULL),(102,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/sejarah_perusahaan/delete/9','Delete data Implemented the e-payment system of each toll gate, that for first time is cooperated only with Bank Mandiri, but now it is also cooperated with BNI and BRI. at Sejarah Perusahaan','',6,'2022-01-12 15:38:38',NULL),(103,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/sejarah_perusahaan/delete/8','Delete data ISO 9001; ISO 14001; ISO 18001:2007. at Sejarah Perusahaan','',6,'2022-01-12 15:38:41',NULL),(104,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/sejarah_perusahaan/delete/7','Delete data Joined of Nexco&Jexway as Shareholders in The Company. at Sejarah Perusahaan','',6,'2022-01-12 15:38:44',NULL),(105,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/sejarah_perusahaan/delete/6','Delete data Joined of PT Margautama Nusantara as Majorities Shareholders in The Company. at Sejarah Perusahaan','',6,'2022-01-12 15:38:47',NULL),(106,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/sejarah_perusahaan/delete/5','Delete data The Company had additional concession for 4 years and 4 month or until October 1, 2028. at Sejarah Perusahaan','',6,'2022-01-12 15:38:49',NULL),(107,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/sejarah_perusahaan/delete/1','Delete data Establish of PT. Bintaro Serpong Damai. at Sejarah Perusahaan','',6,'2022-01-12 15:38:59',NULL),(108,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/sejarah_perusahaan/delete/4','Delete data Joined of PT Nusantara Infrastructure, Tbk as Majorities Shareholders in The Company. at Sejarah Perusahaan','',6,'2022-01-12 15:39:03',NULL),(109,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/sejarah_perusahaan/delete/3','Delete data Joined of PT Nusantara Infrastructure, Tbk as Majorities Shareholders in The Company. at Sejarah Perusahaan','',6,'2022-01-12 15:39:05',NULL),(110,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/sejarah_perusahaan/delete/2','Delete data The issuance of Precidential Decree No. 11 of 1999 regarding of determination of Serpong-West Pondok Aren Toll Road as a Highway and Determination of the type of motor vehicle with toll roles. at Sejarah Perusahaan','',6,'2022-01-12 15:39:08',NULL),(111,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/profile_bsd/delete-image','Delete the image of PT Bintaro Serpong Damai at Profile BSD','',6,'2022-01-12 15:43:03',NULL),(112,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/profile_bsd/delete-image','Delete the image of PT Bintaro Serpong Damai at Profile BSD','',6,'2022-01-12 15:43:50',NULL),(113,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/profile_bsd/edit-save/1','Update data PT MAKASSAR METRO NETWORK at Profile BSD','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>judul</td><td>PT Bintaro Serpong Damai</td><td>PT MAKASSAR METRO NETWORK</td></tr><tr><td>image</td><td></td><td>uploads/6/2022-01/logo_mmn.jpg</td></tr><tr><td>konten</td><td>PT Bintaro Serpong Damai merupakan pemegang konsesi jalan tol sepanjang 7,25 km yang menghubungkan Serpong dan Pondok Aren di Tangerang Selatan, di mana jalan tol ini mulai beroperasi pada 2 Februari 1999. Jalan Tol Serpong-Pondok Aren menjadi jalur utama yang memiliki peran besar dalam membantu menekan waktu tempuh dan mengurai kepadatan kendaraan secara efisien di Wilayah Tangerang Selatan, dimana jalan tol ini mulai beroperasi pada 2 Februari 1999. \r\n\r\nSaat ini, PT Margautama Nusantara (MUN) selaku entitas induk atau pemegang saham utama BSD, tercatat memiliki 88,93% saham.\r\nPemegang saham BSD lainnya adalah PT Wira Perkasa Agung dengan persentase kepemilikan sebesar 4,98%, PT Bumi Serpong Damai Tbk dengan persentase kepemilikan 1,07%, PT Jaya Real Property Tbk dengan persentase kepemilikan 0,84%, Japan Expressway International Co. Ltd (JEXWAY) dengan persentase kepemilikan 2,93%, dan West Nippon Expressway Co. Ltd (W-NEXCO) dengan persentase kepemilikan 1,25%.</td><td>PT Makassar Metro Network (Perusahaan) (dahulu PT Bosowa Marga Nusantara atau BMN) didirikan berdasarkan Akta Notaris Mestariany Habie, S.H., No. 20 tanggal 12 April 1993 dan Perjanjian Usaha Patungan dengan PT Jasa Marga (Persero) Tbk No. 19 tanggal 12 April 1993 dari Notaris yang sama. \r\n\r\nSejak tahun 1998 PT Makassar Metro Network mengoperasikan Jalan Tol Seksi 1 dan 2 sepanjang 6,6 km dan Jalan Tol Ujung Pandang Seksi 3 sepanjang 4,3 km sebagai investasi tambahan dangan  kompensasi perpanjangan masa konsesi dan perubahan tarif.</td></tr><tr><td>struktur</td><td></td><td>uploads/6/2022-01/logo_jtse.jpg</td></tr><tr><td>sejarah</td><td><p><font color=\"#342e49\" face=\"Montserrat, Segoe UI, Roboto, Helvetica Neue, Arial, sans-serif\"><span style=\"font-size: 15px; letter-spacing: 0.3px;\">PT Makassar Metro Network (Perusahaan) (dahulu PT Bosowa Marga Nusantara atau BMN) didirikan berdasarkan Akta Notaris Mestariany Habie, S.H., No. 20 tanggal 12 April 1993 dan Perjanjian Usaha Patungan dengan PT Jasa Marga (Persero) Tbk No. 19 tanggal 12 April 1993 dari Notaris yang sama.&nbsp;</span></font></p><p><font color=\"#342e49\" face=\"Montserrat, Segoe UI, Roboto, Helvetica Neue, Arial, sans-serif\"><span style=\"font-size: 15px; letter-spacing: 0.3px;\">Sejak tahun 1998 PT Makassar Metro Network mengoperasikan Jalan Tol Seksi 1 dan 2 sepanjang 6,6 km dan Jalan Tol Ujung Pandang Seksi 3 sepanjang 4,3 km sebagai investasi tambahan dangan&nbsp; kompensasi perpanjangan masa konsesi dan perubahan tarif.</span></font></p></td><td><p><br></p></td></tr></tbody></table>',6,'2022-01-12 15:46:10',NULL),(114,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/users/delete-image','Try delete the image of Marcom Makassar data at Users Management','',6,'2022-01-12 15:47:39',NULL),(115,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/users/delete-image','Try delete the image of Marcom Makassar data at Users Management','',6,'2022-01-12 15:48:14',NULL),(116,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/login','marcom@tolmakassar.com login with IP Address 103.30.182.234','',6,'2022-01-13 07:20:29',NULL),(117,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/banner39/delete-image','Delete the image of foto1 at Banner','',6,'2022-01-13 07:21:31',NULL),(118,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/banner39/edit-save/4','Update data foto1 at Banner','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/6/2022-01/testg.png</td></tr><tr><td>link</td><td></td><td></td></tr></tbody></table>',6,'2022-01-13 07:28:31',NULL),(119,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/banner39/delete-image','Delete the image of foto3 at Banner','',6,'2022-01-13 07:29:08',NULL),(120,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/banner39/edit-save/5','Update data foto3 at Banner','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/6/2022-01/tol_layang_2.png</td></tr><tr><td>link</td><td></td><td></td></tr></tbody></table>',6,'2022-01-13 07:30:42',NULL),(121,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/banner39/delete-image','Delete the image of foto4 at Banner','',6,'2022-01-13 07:30:53',NULL),(122,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/banner39/edit-save/6','Update data foto4 at Banner','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/6/2022-01/tol_layang3.png</td></tr><tr><td>link</td><td></td><td></td></tr></tbody></table>',6,'2022-01-13 07:32:05',NULL),(123,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/banner39/delete/8','Delete data foto2 at Banner','',6,'2022-01-13 07:32:11',NULL),(124,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/banner39/delete/9','Delete data foto5 at Banner','',6,'2022-01-13 07:32:14',NULL),(125,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/banner39/delete/10','Delete data foto6 at Banner','',6,'2022-01-13 07:32:16',NULL),(126,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/banner39/add-save','Add New Data tol layang 4 at Banner','',6,'2022-01-13 07:35:18',NULL),(127,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/banner39/add-save','Add New Data gambar 5 at Banner','',6,'2022-01-13 07:38:11',NULL),(128,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/profile_bsd/delete-image','Delete the image of PT MAKASSAR METRO NETWORK at Profile BSD','',6,'2022-01-13 07:40:40',NULL),(129,'125.161.221.231','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/login','ntr@tolmakassar.com login with IP Address 125.161.221.231','',7,'2022-01-13 09:27:34',NULL),(130,'125.161.221.231','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/delete-image','Delete the image of 16 at Info Tarif','',7,'2022-01-13 09:32:13',NULL),(131,'125.161.221.231','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/edit-save/16','Update data  at Info Tarif','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/7/2022-01/img_4203.JPG</td></tr><tr><td>location</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr></tbody></table>',7,'2022-01-13 09:32:43',NULL),(132,'125.161.221.231','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/delete-image','Delete the image of 15 at Info Tarif','',7,'2022-01-13 09:32:50',NULL),(133,'125.161.221.231','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/edit-save/15','Update data  at Info Tarif','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/7/2022-01/img_4204.JPG</td></tr><tr><td>location</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr></tbody></table>',7,'2022-01-13 09:33:05',NULL),(134,'125.161.221.231','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/delete-image','Delete the image of 14 at Info Tarif','',7,'2022-01-13 09:33:11',NULL),(135,'125.161.221.231','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/delete-image','Delete the image of 13 at Info Tarif','',7,'2022-01-13 09:35:13',NULL),(136,'125.161.221.231','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/add-save','Add New Data  at Info Tarif','',7,'2022-01-13 09:44:51',NULL),(137,'125.161.221.231','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/add-save','Add New Data  at Info Tarif','',7,'2022-01-13 09:47:18',NULL),(138,'125.161.221.231','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/add-save','Add New Data  at Info Tarif','',7,'2022-01-13 09:48:54',NULL),(139,'125.161.221.231','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/delete-image','Delete the image of 11 at Info Tarif','',7,'2022-01-13 09:49:44',NULL),(140,'125.161.221.231','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/edit-save/11','Update data  at Info Tarif','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/7/2022-01/klb.JPG</td></tr><tr><td>location</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr></tbody></table>',7,'2022-01-13 09:50:00',NULL),(141,'125.161.221.231','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/delete/13','Delete data 13 at Info Tarif','',7,'2022-01-13 09:51:48',NULL),(142,'125.161.221.231','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/delete/14','Delete data 14 at Info Tarif','',7,'2022-01-13 09:51:54',NULL),(143,'125.161.221.231','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/add-save','Add New Data  at Info Tarif','',7,'2022-01-13 09:53:21',NULL),(144,'125.161.221.231','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/add-save','Add New Data  at Info Tarif','',7,'2022-01-13 09:55:32',NULL),(145,'125.161.221.231','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/delete-image','Delete the image of 1 at Info Tarif','',7,'2022-01-13 09:56:44',NULL),(146,'125.161.221.231','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/edit-save/1','Update data  at Info Tarif','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/7/2022-01/img_3041.JPG</td></tr><tr><td>location</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr></tbody></table>',7,'2022-01-13 09:57:05',NULL),(147,'125.161.221.231','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/edit-save/6','Update data  at Info Tarif','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>',7,'2022-01-13 09:58:01',NULL),(148,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/service_location50/edit-save/9','Update data Pantai Losari at Nearby Place','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>location</td><td>ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â± 2 KM | Exit Tol BSD City - Tangerang</td><td>Makassar</td></tr></tbody></table>',6,'2022-01-13 10:11:32',NULL),(149,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/service_location50/edit-save/8','Update data Lapangan Karebosi at Nearby Place','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>location</td><td>ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â± 5,5 KM | Exit Tol BSD City - Tangerang</td><td>Makassar</td></tr></tbody></table>',6,'2022-01-13 10:11:41',NULL),(150,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/service_location50/edit-save/5','Update data Bandar Udara International Sultan Hasanuddin at Nearby Place','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>location</td><td>ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â± 8 KM | Exit Tol Pamulang - Ciputat</td><td>Makassar</td></tr></tbody></table>',6,'2022-01-13 10:11:52',NULL),(151,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/service_location50/edit-save/4','Update data Trans Studio Mall Makassar at Nearby Place','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>location</td><td>ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â± 6 KM | Exit Tol Pamulang - Ciputat</td><td>Makassar</td></tr></tbody></table>',6,'2022-01-13 10:12:01',NULL),(152,'125.161.221.231','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/edit-save/6','Update data  at Info Tarif','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/7/2022-01/brk_medium.JPG</td></tr><tr><td>location</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr></tbody></table>',7,'2022-01-13 10:20:12',NULL),(153,'125.161.221.231','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/info_tarif57/edit-save/5','Update data  at Info Tarif','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/7/2022-01/cby_medium.JPG</td></tr><tr><td>location</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr></tbody></table>',7,'2022-01-13 10:20:51',NULL),(154,'125.161.221.168','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/login','admin@mks.com login with IP Address 125.161.221.168','',5,'2022-01-13 10:44:26',NULL),(155,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/login','marcom@tolmakassar.com login with IP Address 103.30.182.234','',6,'2022-01-14 06:53:58',NULL),(156,'180.254.71.22','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/login','admin@bsdtoll.com login with IP Address 180.254.71.22','',1,'2022-01-14 10:14:32',NULL),(157,'180.252.197.176','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.2 Safari/605.1.15','https://tolmakassar.com/admin/login','ntr@tolmakassar.com login with IP Address 180.252.197.176','',7,'2022-01-14 15:38:07',NULL),(158,'180.252.197.176','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.2 Safari/605.1.15','https://tolmakassar.com/admin/call_center60','Try view the data :name at Call Center','',7,'2022-01-14 15:41:20',NULL),(159,'180.252.197.176','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.2 Safari/605.1.15','https://tolmakassar.com/admin/call_center60','Try view the data :name at Call Center','',7,'2022-01-14 15:41:28',NULL),(160,'180.251.161.47','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/login','ntr@tolmakassar.com login with IP Address 180.251.161.47','',7,'2022-01-15 08:22:21',NULL),(161,'180.251.161.47','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/login','ntr@tolmakassar.com login with IP Address 180.251.161.47','',7,'2022-01-15 11:29:31',NULL),(162,'180.251.161.47','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/login','ntr@tolmakassar.com login with IP Address 180.251.161.47','',7,'2022-01-15 18:00:23',NULL),(163,'180.251.161.47','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/visi_misi44/delete-image','Delete the image of 1 at Visi & Misi','',7,'2022-01-15 18:00:58',NULL),(164,'180.251.161.47','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/visi_misi44/delete-image','Delete the image of 1 at Visi & Misi','',7,'2022-01-15 18:06:04',NULL),(165,'180.251.161.47','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/visi_misi44/edit-save/1','Update data  at Visi & Misi','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>konten</td><td><h3 style=\"text-align: center;\">Visi</h3><p style=\"text-align: center;\"><font color=\"#17102f\" face=\"Montserrat, Segoe UI, Roboto, Helvetica Neue, Arial, sans-serif\"><span style=\"font-size: 15px;\">Menjadi salah satu Perusahaan Jalan Tol Nasional terkemuka dengan fokus membangun jalan-jalan yang strategis.</span></font><br></p><p style=\"text-align: center;\"></p><h3 style=\"text-align: center; \">Misi</h3><p><font color=\"#17102f\" face=\"Montserrat, Segoe UI, Roboto, Helvetica Neue, Arial, sans-serif\"><span style=\"font-size: 15px;\">Berupaya mencapai pertumbuhan jangka panjang yang berkelanjutan dan meningkatkan nilai tambah pemegang saham dengan senantiasa mengoperasikan Jalan Tol secara efisien dan memberikan pelayanan optimal.</span></font><br></p><p></p></td><td><h3 style=\"text-align: center;\"><b>Visi</b></h3><p style=\"text-align: center;\"><b><font color=\"#17102f\" face=\"Montserrat, Segoe UI, Roboto, Helvetica Neue, Arial, sans-serif\"><span style=\"font-size: 15px;\">Menjadi salah satu Perusahaan Jalan Tol Nasional terkemuka dengan fokus membangun jalan-jalan yang strategis.</span></font><br></b></p><p style=\"text-align: center;\"></p><h3 style=\"text-align: center; \"><b>Misi</b></h3><p><font color=\"#17102f\" face=\"Montserrat, Segoe UI, Roboto, Helvetica Neue, Arial, sans-serif\"><span style=\"font-size: 15px;\"><b>Berupaya mencapai pertumbuhan jangka panjang yang berkelanjutan dan meningkatkan nilai tambah pemegang saham dengan senantiasa mengoperasikan Jalan Tol secara efisien dan memberikan pelayanan optimal.</b></span></font><br></p><p></p></td></tr><tr><td>image</td><td></td><td>uploads/7/2022-01/paradaeng.jpeg</td></tr><tr><td>image2</td><td></td><td>uploads/7/2022-01/terbaik.jpeg</td></tr></tbody></table>',7,'2022-01-15 18:25:00',NULL),(166,'180.251.161.47','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/call_center60','Try view the data :name at Call Center','',7,'2022-01-15 18:41:06',NULL),(167,'180.251.161.47','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/call_center60','Try view the data :name at Call Center','',7,'2022-01-15 18:41:29',NULL),(168,'180.251.161.47','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/call_center60','Try view the data :name at Call Center','',7,'2022-01-15 18:41:44',NULL),(169,'180.251.161.47','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/alamat_152','Try view the data :name at Alamat','',7,'2022-01-15 18:42:17',NULL),(170,'180.251.161.47','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/alamat_152','Try view the data :name at Alamat','',7,'2022-01-15 18:42:22',NULL),(171,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/login','marcom@tolmakassar.com login with IP Address 103.30.182.234','',6,'2022-01-17 07:43:48',NULL),(172,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/profile_bsd/edit-save/1','Update data PT MAKASSAR METRO NETWORK at Profile BSD','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>bidang_usaha</td><td>Pengelola Jalan Tol Ruas Pondok Aren - Serpong</td><td>Pengelola Jalan Tol Ruas Ujung Pandang seksi 1, 2 dan 3</td></tr><tr><td>struktur</td><td></td><td>uploads/6/2022-01/structur_organisasi_2022.jpg</td></tr><tr><td>sejarah</td><td><p><br></p></td><td><p>PT Makassar Metro Network (Perusahaan) (dahulu PT Bosowa Marga Nusantara atau BMN) didirikan berdasarkan Akta Notaris Mestariany Habie, S.H., No. 20 tanggal 12 April 1993 dan Perjanjian Usaha Patungan dengan PT Jasa Marga (Persero) Tbk No. 19 tanggal 12 April 1993 dari Notaris yang sama.&nbsp;</p><p><br></p><p>Sejak tahun 1998 PT Makassar Metro Network mengoperasikan Jalan Tol Seksi 1 dan 2 sepanjang 6,6 km dan Jalan Tol Ujung Pandang Seksi 3 sepanjang 4,3 km sebagai investasi tambahan dangan&nbsp; kompensasi perpanjangan masa konsesi dan perubahan tarif.</p></td></tr></tbody></table>',6,'2022-01-17 08:17:55',NULL),(173,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/profile_bsd/edit-save/1','Update data PT MAKASSAR METRO NETWORK at Profile BSD','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>konten</td><td>PT Makassar Metro Network (Perusahaan) (dahulu PT Bosowa Marga Nusantara atau BMN) didirikan berdasarkan Akta Notaris Mestariany Habie, S.H., No. 20 tanggal 12 April 1993 dan Perjanjian Usaha Patungan dengan PT Jasa Marga (Persero) Tbk No. 19 tanggal 12 April 1993 dari Notaris yang sama. \r\n\r\nSejak tahun 1998 PT Makassar Metro Network mengoperasikan Jalan Tol Seksi 1 dan 2 sepanjang 6,6 km dan Jalan Tol Ujung Pandang Seksi 3 sepanjang 4,3 km sebagai investasi tambahan dangan  kompensasi perpanjangan masa konsesi dan perubahan tarif.</td><td></td></tr><tr><td>sejarah</td><td><p>PT Makassar Metro Network (Perusahaan) (dahulu PT Bosowa Marga Nusantara atau BMN) didirikan berdasarkan Akta Notaris Mestariany Habie, S.H., No. 20 tanggal 12 April 1993 dan Perjanjian Usaha Patungan dengan PT Jasa Marga (Persero) Tbk No. 19 tanggal 12 April 1993 dari Notaris yang sama.&nbsp;</p><p><br></p><p>Sejak tahun 1998 PT Makassar Metro Network mengoperasikan Jalan Tol Seksi 1 dan 2 sepanjang 6,6 km dan Jalan Tol Ujung Pandang Seksi 3 sepanjang 4,3 km sebagai investasi tambahan dangan&nbsp; kompensasi perpanjangan masa konsesi dan perubahan tarif.</p></td><td><p>PT Makassar Metro Network (Perusahaan) (dahulu PT Bosowa Marga Nusantara atau BMN) didirikan berdasarkan Akta Notaris Mestariany Habie, S.H., No. 20 tanggal 12 April 1993 dan Perjanjian Usaha Patungan dengan PT Jasa Marga (Persero) Tbk No. 19 tanggal 12 April 1993 dari Notaris yang sama.&nbsp; Akta Pendirian Perusahaan telah mendapat&nbsp; pengesahan dari menteri kehakiman republik indonedia dalam surat keputusan No. C2-12555.HT.01.01.Th.93 tanggal 27 November 1993, dan telah diumumkan dalam berita negara republik indonesia No. 8 tanggal 27 Januari 1995 tambahan No.750 serta telah terdaftar dalam surat persetujuan penenaman modal dalam negara No. 239/IPMDN/1993 tanggal 5 Agustus 1993 yang dikeluarkan oleh badan koordinasi penanaman modal.</p><p>Pada 2 November 2020, telah dilakukan perubahan nama perusahaan menjadi PT. Makassar Metro Network berdasarkan Akta Notaris Karin Cristina Basoeki, S.H., No. 02 tanggal 2 November 2020, yang telah disetujui oleh menteri hukum dan hak asasi manusia republik indonesia dalam surat keputusan No. AHU-0185421. AH 01.11. tanggal 5 November 2020.</p><p>Anggaran Dasar Perusahaan telah mengalami beberapa kali perubahan, terakhir dengan Akta Citra Buana Tungga, S.H., M.Kn., No. 8 tanggal 12 Desember 2019 mengenai peningkatan modal dasar, ditempatkan dan disetor perusahaan. Perubahan tersebut telah mendapat persetujuan dari menteri hukum dan hak asasi manusia republik indonesia berdasarkan surat keputusan no. AHU-0106448. AH. 01.01 tanggal 8 Desember 2019.</p><p>Berdasarkan pasal 3 anggaran dasar perusahaanb, maksud dan tujuan Perusahaan adalah berusaha dalam bidang pembangunan, pengoperasian dan pemeliharaan jalan tol.</p><p>Sejak tahun 1998 PT Makassar Metro Network mengoperasikan jalan tol seksi 1 dan 2 sepanjang 6,6 km dan saat ini sedang membvangun Jalan Tol Ujung Pandang Seksi 3 sepanjang 4,3 km sebagai investasi tambagan dengan kompetensi perpajangan masa konsensasi dan perubahan tarif.</p><p>perubahan berkedudukan di Jalan Jenderal Sudirman No. 5, Menara Bosowa lantai 4, Makassar, Sulawesi Selatan.</p></td></tr></tbody></table>',6,'2022-01-17 08:38:33',NULL),(174,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/visi_misi44/edit-save/1','Update data  at Visi & Misi','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>',6,'2022-01-17 08:41:48',NULL),(175,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/struktur_bsd/delete-image','Delete the image of 1 at Struktur BSD','',6,'2022-01-17 08:42:23',NULL),(176,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/profile_bsd/delete-image','Delete the image of PT MAKASSAR METRO NETWORK at Profile BSD','',6,'2022-01-17 08:43:25',NULL),(177,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/struktur_bsd/edit-save/1','Update data  at Struktur BSD','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/6/2022-01/structur_organisasi_2022.jpg</td></tr></tbody></table>',6,'2022-01-17 08:43:56',NULL),(178,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/call_center60','Try view the data :name at Call Center','',6,'2022-01-17 08:45:43',NULL),(179,'125.161.221.178','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/login','ntr@tolmakassar.com login with IP Address 125.161.221.178','',7,'2022-01-17 08:46:59',NULL),(180,'125.161.221.178','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/banner39/add-save','Add New Data GERBANG TOL at Banner','',7,'2022-01-17 08:49:14',NULL),(181,'125.161.221.178','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/banner39/delete-image','Delete the image of GERBANG TOL at Banner','',7,'2022-01-17 08:50:23',NULL),(182,'125.161.221.178','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/banner39/edit-save/13','Update data GERBANG TOL at Banner','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/7/2022-01/tol_makasar05.jpg</td></tr><tr><td>link</td><td></td><td></td></tr></tbody></table>',7,'2022-01-17 08:51:17',NULL),(183,'125.161.221.178','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/banner39/delete-image','Delete the image of GERBANG TOL at Banner','',7,'2022-01-17 08:51:42',NULL),(184,'125.161.221.178','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/banner39/edit-save/13','Update data GERBANG TOL at Banner','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/7/2022-01/g0020074_large.JPG</td></tr><tr><td>link</td><td></td><td></td></tr></tbody></table>',7,'2022-01-17 08:52:26',NULL),(185,'125.161.221.178','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/banner39/delete-image','Delete the image of GERBANG TOL at Banner','',7,'2022-01-17 08:52:50',NULL),(186,'125.161.221.178','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/banner39/edit-save/13','Update data GERBANG TOL at Banner','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/7/2022-01/g0020071_custom.JPG</td></tr><tr><td>link</td><td></td><td></td></tr></tbody></table>',7,'2022-01-17 08:53:55',NULL),(187,'125.161.221.178','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55','https://tolmakassar.com/admin/banner39/delete/13','Delete data GERBANG TOL at Banner','',7,'2022-01-17 08:54:45',NULL),(188,'110.138.67.237','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/login','admin@bsdtoll.com login with IP Address 110.138.67.237','',1,'2022-01-17 10:22:05',NULL),(189,'110.138.67.237','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/login','admin@bsdtoll.com login with IP Address 110.138.67.237','',1,'2022-01-17 10:22:05',NULL),(190,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/add-save','Add New Data Larangan Roda Dua Menggunakan Akses Tol at Media','',6,'2022-01-17 10:41:10',NULL),(191,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/delete-image','Delete the image of Larangan Roda Dua Menggunakan Akses Tol at Media','',6,'2022-01-17 10:44:58',NULL),(192,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/edit-save/6','Update data Larangan Roda Dua Menggunakan Akses Tol at Media','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/6/2022-01/flayer_sosialisasi_compres.jpg</td></tr></tbody></table>',6,'2022-01-17 10:45:12',NULL),(193,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/add-save','Add New Data LARANGAN RODA DUA MASUK TOL at Media','',6,'2022-01-17 10:47:28',NULL),(194,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/delete/7','Delete data LARANGAN RODA DUA MASUK TOL at Media','',6,'2022-01-17 10:47:53',NULL),(195,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/delete/6','Delete data Larangan Roda Dua Menggunakan Akses Tol at Media','',6,'2022-01-17 10:47:56',NULL),(196,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/add-save','Add New Data LARANGAN RODA DUA (MOTOR) MASUK TOL at Media','',6,'2022-01-17 11:02:46',NULL),(197,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/delete/8','Delete data LARANGAN RODA DUA (MOTOR) MASUK TOL at Media','',6,'2022-01-17 11:03:22',NULL),(198,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/add-save','Add New Data LARANGAN RODA DUA MASUK JALAN TOL at Media','',6,'2022-01-17 11:43:26',NULL),(199,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/delete-image','Delete the image of LARANGAN RODA DUA MASUK JALAN TOL at Media','',6,'2022-01-17 11:44:20',NULL),(200,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/edit-save/9','Update data LARANGAN RODA DUA MASUK JALAN TOL at Media','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/6/2022-01/flayer_sosialisasi_compres.jpg</td></tr></tbody></table>',6,'2022-01-17 11:44:32',NULL),(201,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/delete-image','Delete the image of LARANGAN RODA DUA MASUK JALAN TOL at Media','',6,'2022-01-17 11:44:56',NULL),(202,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/media49/edit-save/9','Update data LARANGAN RODA DUA MASUK JALAN TOL at Media','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/6/2022-01/flayer_sosialisasixxxxxxx.jpg</td></tr></tbody></table>',6,'2022-01-17 11:47:21',NULL),(203,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/call_center60','Try view the data :name at Call Center','',6,'2022-01-17 11:50:47',NULL),(204,'125.161.221.142','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/login','ntr@tolmakassar.com login with IP Address 125.161.221.142','',7,'2022-01-17 11:52:46',NULL),(205,'36.75.242.10','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/banner39/add-save','Add New Data gerbang at Banner','',7,'2022-01-17 12:48:49',NULL),(206,'36.75.242.10','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/banner39/delete-image','Delete the image of gerbang at Banner','',7,'2022-01-17 12:50:10',NULL),(207,'36.75.242.10','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/banner39/edit-save/14','Update data gerbang at Banner','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/7/2022-01/brk_large_custom.JPG</td></tr><tr><td>link</td><td></td><td></td></tr></tbody></table>',7,'2022-01-17 12:50:43',NULL),(208,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/banner39/add-save','Add New Data Seksi 4 at Banner','',6,'2022-01-17 13:42:11',NULL),(209,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/banner39/add-save','Add New Data Seksi 4 at Banner','',6,'2022-01-17 13:53:19',NULL),(210,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/banner39/add-save','Add New Data seksi empat at Banner','',6,'2022-01-17 13:53:48',NULL),(211,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/banner39/add-save','Add New Data seksi iv at Banner','',6,'2022-01-17 13:54:17',NULL),(212,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/sejarah_perusahaan/add-save','Add New Data Operation of the Old Tallo Bridge by PT Jasa Marga (Persero) at Sejarah Perusahaan','',6,'2022-01-17 16:01:18',NULL),(213,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/sejarah_perusahaan/edit-save/1','Update data Operation of the Old Tallo Bridge by PT Jasa Marga (Persero) at Sejarah Perusahaan','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tanggal</td><td></td><td>2021-01-17</td></tr></tbody></table>',6,'2022-01-17 16:02:15',NULL),(214,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/sejarah_perusahaan/edit-save/1','Update data Operation of the Old Tallo Bridge by PT Jasa Marga (Persero) at Sejarah Perusahaan','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tanggal</td><td>2021-01-17</td><td>1981-01-01</td></tr></tbody></table>',6,'2022-01-17 16:04:28',NULL),(215,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/sejarah_perusahaan/add-save','Add New Data PT Jasa Marga (Persero) and Bosowa Group formed a joint venture to build Toll Road Sections I & II at Sejarah Perusahaan','',6,'2022-01-17 16:07:13',NULL),(216,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/sejarah_perusahaan/add-save','Add New Data Construction of Section I & II Toll Road Construction at Sejarah Perusahaan','',6,'2022-01-17 16:10:06',NULL),(217,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/sejarah_perusahaan/edit-save/3','Update data Construction of Section I & II Toll Road Construction at Sejarah Perusahaan','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>',6,'2022-01-17 16:11:01',NULL),(218,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/sejarah_perusahaan/add-save','Add New Data 1998\r\nSection I & II Toll Road Operation by PT. Bosowa Marga Nusantara at Sejarah Perusahaan','',6,'2022-01-17 16:13:05',NULL),(219,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/sejarah_perusahaan/add-save','Add New Data 2005\r\nSection IV . Toll Road Construction Construction at Sejarah Perusahaan','',6,'2022-01-17 16:15:02',NULL),(220,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/sejarah_perusahaan/add-save','Add New Data 2008\r\nOperation of Section IV Toll Road by PT Jalan Tol Section Empat at Sejarah Perusahaan','',6,'2022-01-17 16:16:44',NULL),(221,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/sejarah_perusahaan/add-save','Add New Data 2015\r\nImplementation of Tallo II Bridge Construction and Road Frontage Ir. Sutami at Sejarah Perusahaan','',6,'2022-01-17 16:17:51',NULL),(222,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/sejarah_perusahaan/add-save','Add New Data 2018\r\nAP Pettarani Elevated Toll Road Construction (Section III) at Sejarah Perusahaan','',6,'2022-01-17 16:18:44',NULL),(223,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/sejarah_perusahaan/add-save','Add New Data The operation of the AP Pettarani Elevated Toll Road by PT. Makassar Metro Network at Sejarah Perusahaan','',6,'2022-01-17 16:19:40',NULL),(224,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','https://tolmakassar.com/admin/login','marcom@tolmakassar.com login with IP Address 103.30.182.234','',6,'2022-01-18 06:21:18',NULL),(225,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/login','ntr@tolmakassar.com login with IP Address 125.161.221.158','',7,'2022-01-20 09:07:48',NULL),(226,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/struktur_bsd/delete-image','Delete the image of 1 at Struktur','',7,'2022-01-20 09:08:29',NULL),(227,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/struktur_bsd/edit-save/1','Update data  at Struktur','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/7/2022-01/whatsapp_image_2022_01_14_at_101912_large.jpeg</td></tr></tbody></table>',7,'2022-01-20 09:08:53',NULL),(228,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/struktur_bsd/delete-image','Delete the image of 1 at Struktur','',7,'2022-01-20 09:09:15',NULL),(229,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/struktur_bsd/edit-save/1','Update data  at Struktur','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/7/2022-01/whatsapp_image_2022_01_14_at_101912_large_custom.jpeg</td></tr></tbody></table>',7,'2022-01-20 09:09:51',NULL),(230,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/struktur_bsd/delete-image','Delete the image of 1 at Struktur','',7,'2022-01-20 09:10:03',NULL),(231,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/struktur_bsd/edit-save/1','Update data  at Struktur','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/7/2022-01/whatsapp_image_2022_01_14_at_101912_large_small.jpeg</td></tr></tbody></table>',7,'2022-01-20 09:10:18',NULL),(232,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/struktur_bsd/delete-image','Delete the image of 1 at Struktur','',7,'2022-01-20 09:10:40',NULL),(233,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/struktur_bsd/edit-save/1','Update data  at Struktur','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/7/2022-01/whatsapp_image_2022_01_14_at_101912_small.jpeg</td></tr></tbody></table>',7,'2022-01-20 09:12:08',NULL),(234,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/struktur_bsd/delete-image','Delete the image of 1 at Struktur','',7,'2022-01-20 09:12:28',NULL),(235,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/struktur_bsd/edit-save/1','Update data  at Struktur','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/7/2022-01/whatsapp_image_2022_01_14_at_101912_phone.jpeg</td></tr></tbody></table>',7,'2022-01-20 09:12:50',NULL),(236,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/struktur_bsd/delete-image','Delete the image of 1 at Struktur','',7,'2022-01-20 09:18:38',NULL),(237,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/struktur_bsd/edit-save/1','Update data  at Struktur','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/7/2022-01/struktur.jpg</td></tr></tbody></table>',7,'2022-01-20 09:18:44',NULL),(238,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/struktur_bsd/delete-image','Delete the image of 1 at Struktur','',7,'2022-01-20 09:18:59',NULL),(239,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/struktur_bsd/edit-save/1','Update data  at Struktur','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/7/2022-01/logo_mmn.jpg</td></tr></tbody></table>',7,'2022-01-20 09:19:04',NULL),(240,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/struktur_bsd/delete-image','Delete the image of 1 at Struktur','',7,'2022-01-20 09:21:53',NULL),(241,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/struktur_bsd/edit-save/1','Update data  at Struktur','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/7/2022-01/struktur1.png</td></tr></tbody></table>',7,'2022-01-20 09:23:38',NULL),(242,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/struktur_bsd/delete-image','Delete the image of 1 at Struktur','',7,'2022-01-20 09:27:41',NULL),(243,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/banner39/delete-image','Delete the image of foto1 at Banner','',7,'2022-01-20 09:31:41',NULL),(244,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/banner39/edit-save/4','Update data foto1 at Banner','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/7/2022-01/1.png</td></tr><tr><td>link</td><td></td><td></td></tr></tbody></table>',7,'2022-01-20 09:31:50',NULL),(245,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/banner39/delete-image','Delete the image of foto1 at Banner','',7,'2022-01-20 09:32:28',NULL),(246,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/banner39/edit-save/4','Update data foto1 at Banner','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/7/2022-01/1_large_medium.png</td></tr><tr><td>link</td><td></td><td></td></tr></tbody></table>',7,'2022-01-20 09:33:24',NULL),(247,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/struktur_bsd/edit-save/1','Update data  at Struktur','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/7/2022-01/struktur.jpg</td></tr></tbody></table>',7,'2022-01-20 09:34:39',NULL),(248,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/login','marcom@tolmakassar.com login with IP Address 103.30.182.234','',6,'2022-01-20 10:13:19',NULL),(249,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/sertifikat_bsd/delete/1','Delete data spm at Sertifikat','',7,'2022-01-20 10:22:19',NULL),(250,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/alamat_152','Try view the data :name at Alamat','',7,'2022-01-20 10:23:01',NULL),(251,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/banner39/delete/12','Delete data gambar 5 at Banner','',6,'2022-01-20 10:25:35',NULL),(252,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/banner39/delete-image','Delete the image of foto1 at Banner','',7,'2022-01-20 10:59:42',NULL),(253,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/banner39/edit-save/4','Update data foto1 at Banner','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/7/2022-01/1_large_custom.png</td></tr><tr><td>link</td><td></td><td></td></tr></tbody></table>',7,'2022-01-20 11:00:21',NULL),(254,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/banner39/delete-image','Delete the image of foto1 at Banner','',7,'2022-01-20 11:01:11',NULL),(255,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/banner39/edit-save/4','Update data foto1 at Banner','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/7/2022-01/1_large_custom.png</td></tr><tr><td>link</td><td></td><td></td></tr></tbody></table>',7,'2022-01-20 11:04:48',NULL),(256,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/banner39/delete-image','Delete the image of foto1 at Banner','',7,'2022-01-20 11:07:19',NULL),(257,'125.161.221.158','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/banner39/edit-save/4','Update data foto1 at Banner','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/7/2022-01/1.png</td></tr><tr><td>link</td><td></td><td></td></tr></tbody></table>',7,'2022-01-20 11:19:49',NULL),(258,'36.95.39.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/struktur_bsd/delete-image','Delete the image of 1 at Struktur','',7,'2022-01-20 16:31:06',NULL),(259,'36.67.188.241','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/login','adejul@admin.com login with IP Address 36.67.188.241','',4,'2022-01-21 16:37:26',NULL),(260,'36.95.39.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/login','ntr@tolmakassar.com login with IP Address 36.95.39.58','',7,'2022-01-21 16:51:53',NULL),(261,'36.95.39.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62','https://tolmakassar.com/admin/struktur_bsd/edit-save/1','Update data  at Struktur','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/7/2022-01/struktur.jpg</td></tr></tbody></table>',7,'2022-01-21 16:52:23',NULL),(262,'36.67.188.241','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/logout','adejul@admin.com logout','',4,'2022-01-21 18:17:48',NULL),(263,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','https://tolmakassar.com/admin/login','marcom@tolmakassar.com login with IP Address 103.30.182.234','',6,'2022-01-24 06:11:55',NULL),(264,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','https://tolmakassar.com/admin/call_center60','Try view the data :name at Call Center','',6,'2022-01-24 06:39:12',NULL),(265,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','https://tolmakassar.com/admin/call_center60','Try view the data :name at Call Center','',6,'2022-01-24 06:39:51',NULL),(266,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','https://tolmakassar.com/admin/alamat_152','Try view the data :name at Alamat','',6,'2022-01-24 06:42:01',NULL),(267,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','https://tolmakassar.com/admin/login','marcom@tolmakassar.com login with IP Address 103.30.182.234','',6,'2022-01-25 10:32:23',NULL),(268,'180.254.69.219','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/login','admin@bsdtoll.com login with IP Address 180.254.69.219','',1,'2022-01-25 15:38:48',NULL),(269,'180.254.69.219','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/call_center60/delete-image','Delete the image of 1 at Call Center','',1,'2022-01-25 15:39:03',NULL),(270,'180.254.69.219','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','https://tolmakassar.com/admin/call_center60/edit-save/1','Update data  at Call Center','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2022-01/img_3056.JPG</td></tr><tr><td>deskripsi</td><td></td><td></td></tr></tbody></table>',1,'2022-01-25 15:39:14',NULL),(271,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','https://tolmakassar.com/admin/login','marcom@tolmakassar.com login with IP Address 103.30.182.234','',6,'2022-01-27 08:48:46',NULL),(272,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','https://tolmakassar.com/admin/struktur_bsd/delete-image','Delete the image of 1 at Struktur','',6,'2022-01-27 08:49:00',NULL),(273,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','https://tolmakassar.com/admin/profile_bsd/delete-image','Delete the image of PT MAKASSAR METRO NETWORK at Profile','',6,'2022-01-27 08:49:30',NULL),(274,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','https://tolmakassar.com/admin/profile_bsd/edit-save/1','Update data PT MAKASSAR METRO NETWORK at Profile','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/6/2022-01/logo_logo_mmn_jtse.jpg</td></tr><tr><td>struktur</td><td></td><td>uploads/6/2022-01/logo_logo_mmn_jtse.jpg</td></tr></tbody></table>',6,'2022-01-27 08:50:28',NULL),(275,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','https://tolmakassar.com/admin/struktur_bsd/edit-save/1','Update data  at Struktur','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/6/2022-01/structure_organisasi_mmn_jtse.jpg</td></tr></tbody></table>',6,'2022-01-27 08:51:47',NULL),(276,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','https://tolmakassar.com/admin/struktur_bsd/delete-image','Delete the image of 1 at Struktur','',6,'2022-01-27 08:52:29',NULL),(277,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','https://tolmakassar.com/admin/alamat_152','Try view the data :name at Alamat','',6,'2022-01-27 08:53:10',NULL),(278,'125.161.221.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69','https://tolmakassar.com/admin/login','ntr@tolmakassar.com login with IP Address 125.161.221.165','',7,'2022-01-27 11:15:23',NULL),(279,'125.161.221.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69','https://tolmakassar.com/admin/struktur_bsd/edit-save/1','Update data  at Struktur','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/7/2022-01/logo_mmn.jpg</td></tr></tbody></table>',7,'2022-01-27 11:17:25',NULL),(280,'36.67.188.241','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','https://tolmakassar.com/admin/login','admin@bsdtoll.com login with IP Address 36.67.188.241','',1,'2022-01-27 15:52:58',NULL),(281,'36.67.188.241','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','https://tolmakassar.com/admin/module_generator/delete/62','Delete data contact at Module Generator','',1,'2022-01-27 15:56:12',NULL),(282,'36.67.188.241','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','https://tolmakassar.com/admin/module_generator/delete/64','Delete data Contact Detail at Module Generator','',1,'2022-01-27 15:56:52',NULL),(283,'103.30.182.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','https://tolmakassar.com/admin/login','marcom@tolmakassar.com login with IP Address 103.30.182.234','',6,'2022-01-31 06:07:08',NULL),(284,'125.161.221.136','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69','https://tolmakassar.com/admin/login','ntr@tolmakassar.com login with IP Address 125.161.221.136','',7,'2022-02-02 11:07:13',NULL),(285,'139.192.171.146','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','https://tolmakassar.com/admin/login','admin@bsdtoll.com login with IP Address 139.192.171.146','',1,'2022-02-04 13:56:54',NULL),(286,'139.192.171.146','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','https://tolmakassar.com/admin/module_generator/delete/63','Delete data Contact at Module Generator','',1,'2022-02-04 14:02:15',NULL),(287,'139.192.171.146','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','https://tolmakassar.com/admin/logout','admin@bsdtoll.com logout','',1,'2022-02-04 14:02:51',NULL),(288,'125.161.221.204','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','https://tolmakassar.com/admin/login','admin@bsdtoll.com login with IP Address 125.161.221.204','',1,'2022-02-04 14:03:26',NULL),(289,'139.192.171.146','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','https://tolmakassar.com/admin/login','admin@bsdtoll.com login with IP Address 139.192.171.146','',1,'2022-02-04 14:03:28',NULL),(290,'139.192.171.146','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','https://tolmakassar.com/admin/logout','admin@bsdtoll.com logout','',1,'2022-02-04 14:56:50',NULL),(291,'139.192.171.146','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','https://tolmakassar.com/admin/login','admin@bsdtoll.com login with IP Address 139.192.171.146','',1,'2022-02-04 14:56:54',NULL);
/*!40000 ALTER TABLE `cms_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_menus`
--

DROP TABLE IF EXISTS `cms_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'url',
  `path` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int DEFAULT NULL,
  `sorting` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_menus`
--

LOCK TABLES `cms_menus` WRITE;
/*!40000 ALTER TABLE `cms_menus` DISABLE KEYS */;
INSERT INTO `cms_menus` VALUES (4,'Membership','Route','AdminUserDetail65ControllerGetIndex',NULL,'fa fa-user-plus',0,1,0,1,10,'2022-02-04 13:59:18',NULL),(35,'Banner','Route','AdminBanner39ControllerGetIndex','normal','fa fa-flag',37,1,0,1,1,'2021-08-05 11:32:01','2022-01-12 11:24:37'),(36,'Menu Icon','Route','AdminMenuControllerGetIndex',NULL,'fa fa-navicon',37,1,0,1,2,'2021-08-05 11:38:42',NULL),(37,'Beranda','URL','/home','normal','fa fa-home',0,1,0,1,1,'2021-08-05 11:41:38','2021-08-08 09:12:12'),(38,'Sejarah Perusahaan','Route','AdminSejarahPerusahaanControllerGetIndex','normal','fa fa-clock-o',39,1,0,1,1,'2021-08-05 11:42:44','2022-01-12 11:25:01'),(39,'Tentang Kami','URL','/about-us','normal','fa fa-users',0,1,0,1,2,'2021-08-05 11:44:48','2021-08-08 08:59:12'),(41,'Profil Perusahaan','Route','AdminProfileBsdControllerGetIndex','normal','fa fa-user-md',39,1,0,1,2,'2021-08-05 11:55:06','2022-01-12 11:25:23'),(42,'Visi & Misi','Route','AdminVisiMisi44ControllerGetIndex','normal','fa fa-eye',39,1,0,1,3,'2021-08-05 12:25:45','2022-01-12 11:25:35'),(43,'Nilai Perusahaan','Route','AdminNilaiBsdControllerGetIndex','normal','fa fa-star',39,1,0,1,7,'2021-08-05 12:34:35','2022-01-12 11:26:15'),(44,'Struktur Perusahaan','Route','AdminStrukturBsdControllerGetIndex','normal','fa fa-search',39,1,0,1,5,'2021-08-05 13:06:02','2022-01-12 11:25:51'),(45,'Sertifikat Perusahaan','Route','AdminSertifikatBsdControllerGetIndex','normal','fa fa-star-o',39,1,0,1,6,'2021-08-05 13:07:28','2022-01-12 11:26:05'),(46,'Dewan Komisaris dan Direksi','Route','AdminDewanControllerGetIndex',NULL,'fa fa-users',39,1,0,1,4,'2021-08-05 19:07:00',NULL),(47,'Artikel','Route','AdminMedia49ControllerGetIndex','normal','fa fa-newspaper-o',52,1,0,1,2,'2021-08-05 19:56:38','2021-08-08 09:10:02'),(48,'Lokasi Terdekat','Route','AdminServiceLocation50ControllerGetIndex','normal','fa fa-map-marker',0,1,0,1,4,'2021-08-05 19:58:21','2022-01-12 11:27:02'),(49,'Sosial Media','Route','AdminInfoTol51ControllerGetIndex','normal','fa fa-globe',51,1,0,1,2,'2021-08-05 20:02:32','2022-01-12 11:27:48'),(50,'Alamat','Route','AdminAlamat152ControllerGetIndex','normal','fa fa-map-pin',51,1,0,1,1,'2021-08-05 20:04:32','2022-01-12 11:27:40'),(51,'Hubungi Kami','URL','/contact-us','normal','fa fa-phone',0,1,0,1,6,'2021-08-05 20:05:35',NULL),(52,'Media','URL','/media','normal','fa fa-newspaper-o',0,1,0,1,5,'2021-08-05 20:06:30','2022-01-12 11:27:09'),(54,'Billboard','Route','AdminBillboard54ControllerGetIndex','normal','fa fa-television',52,1,0,1,1,'2021-08-05 20:09:44','2022-01-12 11:27:20'),(55,'Rest Area','Route','AdminRestArea55ControllerGetIndex','normal','fa fa-bed',57,1,0,1,1,'2021-08-05 20:14:33','2021-08-08 09:06:49'),(56,'Rest Area Tenant','Route','AdminRestAreaChild56ControllerGetIndex','normal','fa fa-building-o',57,1,0,1,2,'2021-08-05 20:15:14','2021-08-08 09:15:08'),(57,'Layanan Jalan Tol','URL','/layanan','normal','fa fa-road',0,1,0,1,3,'2021-08-05 20:16:48','2021-08-08 09:03:58'),(58,'Info Tarif Tol','Route','AdminInfoTarif57ControllerGetIndex','normal','fa fa-info-circle',57,1,0,1,4,'2021-08-05 20:18:14','2022-01-12 11:26:41'),(59,'CCTV','Route','AdminLiveCctv58ControllerGetIndex','normal','fa fa-video-camera',57,1,0,1,3,'2021-08-05 20:19:28','2021-08-08 09:07:21'),(60,'Call Center Child','Route','AdminCallCentre59ControllerGetIndex','normal','fa fa-phone-square',57,1,0,1,6,'2021-08-05 20:21:27','2021-09-15 23:58:40'),(61,'Call Center','Route','AdminCallCenter60ControllerGetIndex','normal','fa fa-phone',57,1,0,1,5,'2021-09-15 23:57:50','2022-01-12 11:26:51'),(62,'Tender','Route','AdminTenderControllerGetIndex','normal','fa fa-glass',0,1,0,1,7,'2021-10-06 10:10:09','2022-01-12 11:27:56');
/*!40000 ALTER TABLE `cms_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_menus_privileges`
--

DROP TABLE IF EXISTS `cms_menus_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_menus_privileges` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int DEFAULT NULL,
  `id_cms_privileges` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_menus_privileges`
--

LOCK TABLES `cms_menus_privileges` WRITE;
/*!40000 ALTER TABLE `cms_menus_privileges` DISABLE KEYS */;
INSERT INTO `cms_menus_privileges` VALUES (2,2,1),(3,1,1),(4,3,1),(5,4,1),(6,5,1),(8,6,1),(11,9,1),(12,7,1),(14,8,1),(15,10,1),(16,11,1),(17,12,1),(18,13,1),(19,14,1),(20,15,1),(21,16,1),(22,17,1),(24,19,1),(25,20,2),(26,20,1),(27,21,2),(28,21,1),(29,22,2),(30,22,1),(33,24,1),(34,25,1),(35,26,1),(36,27,1),(37,28,2),(38,28,1),(39,23,2),(40,23,1),(41,18,1),(42,29,1),(43,30,1),(44,31,1),(45,32,1),(46,33,1),(47,34,1),(49,36,1),(55,40,1),(61,46,1),(66,51,2),(67,51,1),(70,53,1),(81,39,2),(82,39,1),(87,57,2),(88,57,1),(89,55,1),(90,59,1),(94,47,2),(95,47,1),(98,37,2),(99,37,1),(100,56,1),(102,60,1),(104,35,2),(105,35,1),(106,38,2),(107,38,1),(108,41,2),(109,41,1),(110,42,2),(111,42,1),(112,44,2),(113,44,1),(114,45,2),(115,45,1),(116,43,2),(117,43,1),(118,58,2),(119,58,1),(120,61,2),(121,61,1),(122,48,2),(123,48,1),(124,52,2),(125,52,1),(126,54,2),(127,54,1),(128,50,2),(129,50,1),(130,49,2),(131,49,1),(132,62,2),(133,62,1),(134,1,1),(135,2,1),(136,3,1),(137,4,1);
/*!40000 ALTER TABLE `cms_menus_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_moduls`
--

DROP TABLE IF EXISTS `cms_moduls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_moduls` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_moduls`
--

LOCK TABLES `cms_moduls` WRITE;
/*!40000 ALTER TABLE `cms_moduls` DISABLE KEYS */;
INSERT INTO `cms_moduls` VALUES (1,'Notifications','fa fa-cog','notifications','cms_notifications','NotificationsController',1,1,'2021-04-27 06:40:43',NULL,NULL),(2,'Privileges','fa fa-cog','privileges','cms_privileges','PrivilegesController',1,1,'2021-04-27 06:40:43',NULL,NULL),(3,'Privileges Roles','fa fa-cog','privileges_roles','cms_privileges_roles','PrivilegesRolesController',1,1,'2021-04-27 06:40:43',NULL,NULL),(4,'Users Management','fa fa-users','users','cms_users','AdminCmsUsersController',0,1,'2021-04-27 06:40:43',NULL,NULL),(5,'Settings','fa fa-cog','settings','cms_settings','SettingsController',1,1,'2021-04-27 06:40:43',NULL,NULL),(6,'Module Generator','fa fa-database','module_generator','cms_moduls','ModulsController',1,1,'2021-04-27 06:40:43',NULL,NULL),(7,'Menu Management','fa fa-bars','menu_management','cms_menus','MenusController',1,1,'2021-04-27 06:40:43',NULL,NULL),(8,'Email Templates','fa fa-envelope-o','email_templates','cms_email_templates','EmailTemplatesController',1,1,'2021-04-27 06:40:43',NULL,NULL),(9,'Statistic Builder','fa fa-dashboard','statistic_builder','cms_statistics','StatisticBuilderController',1,1,'2021-04-27 06:40:43',NULL,NULL),(10,'API Generator','fa fa-cloud-download','api_generator','','ApiCustomController',1,1,'2021-04-27 06:40:43',NULL,NULL),(11,'Log User Access','fa fa-flag-o','logs','cms_logs','LogsController',1,1,'2021-04-27 06:40:43',NULL,NULL),(12,'Banner','fa fa-image','banner','banner','AdminBannerController',0,0,'2021-04-27 07:39:47',NULL,'2021-08-05 09:45:47'),(13,'Live CCTV','fa fa-video-camera','live_cctv','live_cctv','AdminLiveCctvController',0,0,'2021-04-27 07:51:10',NULL,'2021-08-05 09:46:44'),(14,'Info Tarif','fa fa-money','info_tarif','info_tarif','AdminInfoTarifController',0,0,'2021-04-27 07:53:31',NULL,'2021-04-27 07:56:18'),(15,'Gerbang','fa fa-home','gerbang','gerbang','AdminGerbangController',0,0,'2021-04-27 07:55:03',NULL,'2021-04-27 07:56:15'),(16,'Info Tarif','fa fa-money','info_tarif16','info_tarif','AdminInfoTarif16Controller',0,0,'2021-04-27 07:57:52',NULL,'2021-08-05 09:46:27'),(17,'Maps','fa fa-sitemap','maps','maps','AdminMapsController',0,0,'2021-04-27 07:58:56',NULL,'2021-07-30 03:51:15'),(18,'Service Location','fa fa-square','service_location','service_location','AdminServiceLocationController',0,0,'2021-04-27 08:01:23',NULL,'2021-08-05 09:47:16'),(19,'Service Places','fa fa-flag','service_place','service_place','AdminServicePlaceController',0,0,'2021-04-27 08:05:21',NULL,'2021-07-30 01:28:57'),(20,'Billboard','fa fa-tv','billboard','billboard','AdminBillboardController',0,0,'2021-04-27 08:09:33',NULL,'2021-08-05 09:45:53'),(21,'Tenants','fa fa-bank','tenants','tenants','AdminTenantsController',0,0,'2021-04-27 08:17:17',NULL,'2021-08-05 09:47:20'),(22,'Contacts','fa fa-user','contacts','contacts','AdminContactsController',0,0,'2021-04-27 08:20:19',NULL,'2021-08-05 09:46:02'),(23,'Customers','fa fa-user-plus','customers','customers','AdminCustomersController',0,0,'2021-04-27 08:23:23',NULL,'2021-08-05 09:46:08'),(24,'Invoices','fa fa-newspaper-o','print_invoice','print_invoice','AdminPrintInvoiceController',0,0,'2021-04-27 08:28:11',NULL,'2021-08-05 09:46:39'),(25,'Call Center','fa fa-phone','call_center','call_center','AdminCallCenterController',0,0,'2021-04-27 08:29:19',NULL,'2021-08-01 05:40:14'),(26,'Registration','fa fa-sign-in','register','register','AdminRegisterController',0,0,'2021-04-27 08:31:55',NULL,'2021-08-05 09:47:01'),(27,'Media','fa fa-newspaper-o','media','media','AdminMediaController',0,0,'2021-07-30 01:20:33',NULL,'2021-08-05 09:46:52'),(28,'Direksi','fa fa-user','profile','profile','AdminProfileController',0,0,'2021-07-30 01:34:45',NULL,'2021-08-05 09:46:17'),(29,'About','fa fa-search','about','about','AdminAboutController',0,0,'2021-07-30 22:46:30',NULL,'2021-08-05 09:45:37'),(30,'Milestone','fa fa-map-marker','timeline','timeline','AdminTimelineController',0,0,'2021-07-30 22:47:16',NULL,'2021-08-05 09:46:56'),(31,'Visi Misi','fa fa-eye','visi_misi','visi_misi','AdminVisiMisiController',0,0,'2021-07-30 23:04:33',NULL,'2021-08-05 09:47:26'),(32,'Info Tol','fa fa-search','info_tol','info_tol','AdminInfoTolController',0,0,'2021-07-30 23:50:37',NULL,'2021-08-05 09:46:34'),(33,'Alamat','fa fa-map-pin','alamat','alamat','AdminAlamatController',0,0,'2021-07-31 23:14:46',NULL,'2021-08-01 05:24:32'),(34,'Call Centre','fa fa-car','call_centre','call_centre','AdminCallCentreController',0,0,'2021-07-31 23:25:52',NULL,'2021-08-05 09:45:57'),(35,'Rest area','fa fa-home','rest_area','rest_area','AdminRestAreaController',0,0,'2021-08-01 02:34:20',NULL,'2021-08-05 09:47:05'),(36,'Rest Area Detail','fa fa-glass','rest_area_child','rest_area_child','AdminRestAreaChildController',0,0,'2021-08-01 03:00:50',NULL,'2021-08-05 09:47:11'),(37,'Alamat','fa fa-glass','alamat_1','alamat_1','AdminAlamat1Controller',0,0,'2021-08-01 04:55:19',NULL,'2021-08-05 09:45:43'),(38,'Banner Contact Us','fa fa-glass','banner_contact_us','banner_contact_us','AdminBannerContactUsController',0,0,'2021-08-01 05:27:10',NULL,'2021-08-01 05:39:54'),(39,'Banner','fa fa-flag','banner39','banner','AdminBanner39Controller',0,0,'2021-08-05 11:32:01',NULL,NULL),(40,'Menu Icon','fa fa-navicon','menu','menu','AdminMenuController',0,0,'2021-08-05 11:38:42',NULL,NULL),(41,'Sejarah Perusahaan','fa fa-clock-o','sejarah_perusahaan','sejarah_perusahaan','AdminSejarahPerusahaanController',0,0,'2021-08-05 11:42:44',NULL,NULL),(42,'Profile Perusahaan','fa fa-user-md','profile_perusahaan','profile_perusahaan','AdminProfilePerusahaanController',0,0,'2021-08-05 11:48:26',NULL,'2021-08-05 11:51:58'),(43,'Profile','fa fa-user-md','profile_bsd','profile_bsd','AdminProfileBsdController',0,0,'2021-08-05 11:55:06',NULL,NULL),(44,'Visi & Misi','fa fa-eye','visi_misi44','visi_misi','AdminVisiMisi44Controller',0,0,'2021-08-05 12:25:45',NULL,NULL),(45,'Nilai Perusahaan','fa fa-star','nilai_bsd','nilai_bsd','AdminNilaiBsdController',0,0,'2021-08-05 12:34:35',NULL,NULL),(46,'Struktur','fa fa-search','struktur_bsd','struktur_bsd','AdminStrukturBsdController',0,0,'2021-08-05 13:06:02',NULL,NULL),(47,'Sertifikat','fa fa-star-o','sertifikat_bsd','sertifikat_bsd','AdminSertifikatBsdController',0,0,'2021-08-05 13:07:28',NULL,NULL),(48,'Dewan Komisaris dan Direksi','fa fa-users','dewan','dewan','AdminDewanController',0,0,'2021-08-05 19:07:00',NULL,NULL),(49,'Media','fa fa-glass','media49','media','AdminMedia49Controller',0,0,'2021-08-05 19:56:38',NULL,NULL),(50,'Nearby Place','fa fa-glass','service_location50','service_location','AdminServiceLocation50Controller',0,0,'2021-08-05 19:58:21',NULL,NULL),(51,'Sosial Media','fa fa-glass','info_tol51','info_tol','AdminInfoTol51Controller',0,0,'2021-08-05 20:02:32',NULL,NULL),(52,'Alamat','fa fa-glass','alamat_152','alamat_1','AdminAlamat152Controller',0,0,'2021-08-05 20:04:32',NULL,NULL),(53,'Billboard','fa fa-glass','billboard54','billboard','AdminServiceLocation53Controller',0,0,'2021-08-05 20:07:29',NULL,'2021-08-05 20:09:32'),(54,'Billboard','fa fa-bars','billboard54','billboard','AdminBillboard54Controller',0,0,'2021-08-05 20:09:44',NULL,NULL),(55,'Rest Area','fa fa-glass','rest_area55','rest_area','AdminRestArea55Controller',0,0,'2021-08-05 20:14:33',NULL,NULL),(56,'Rest Area Child','fa fa-glass','rest_area_child56','rest_area_child','AdminRestAreaChild56Controller',0,0,'2021-08-05 20:15:14',NULL,NULL),(57,'Info Tarif','fa fa-money','info_tarif57','info_tarif','AdminInfoTarif57Controller',0,0,'2021-08-05 20:18:14',NULL,NULL),(58,'CCTV','fa fa-glass','live_cctv58','live_cctv','AdminLiveCctv58Controller',0,0,'2021-08-05 20:19:28',NULL,NULL),(59,'Call Center Child','fa fa-phone-square','call_center_child','call_center_child','AdminCallCentre59Controller',0,0,'2021-08-05 20:21:27',NULL,NULL),(60,'Call Center','fa fa-phone','call_center60','call_center','AdminCallCenter60Controller',0,0,'2021-09-15 23:57:50',NULL,NULL),(61,'Tender','fa fa-glass','tender','tender','AdminTenderController',0,0,'2021-10-06 10:10:09',NULL,NULL),(62,'contact','fa fa-user','contacts62','contacts','AdminContacts62Controller',0,0,'2022-01-27 15:53:47',NULL,'2022-01-27 15:56:12'),(63,'Contact','fa fa-user-plus','user_detail','user_detail','AdminUsers63Controller',0,0,'2022-01-27 15:55:14',NULL,'2022-02-04 14:02:15'),(64,'Contact Detail','fa fa-glass','user_detail64','user_detail','AdminUserDetail64Controller',0,0,'2022-01-27 15:56:28',NULL,'2022-01-27 15:56:52'),(65,'Membership','fa fa-user-plus','user_detail65','user_detail','AdminUserDetail65Controller',0,0,'2022-02-04 13:59:18',NULL,NULL);
/*!40000 ALTER TABLE `cms_moduls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_notifications`
--

DROP TABLE IF EXISTS `cms_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_notifications` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_users` int DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_notifications`
--

LOCK TABLES `cms_notifications` WRITE;
/*!40000 ALTER TABLE `cms_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_privileges`
--

DROP TABLE IF EXISTS `cms_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_privileges` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_privileges`
--

LOCK TABLES `cms_privileges` WRITE;
/*!40000 ALTER TABLE `cms_privileges` DISABLE KEYS */;
INSERT INTO `cms_privileges` VALUES (1,'Super Administrator',1,'skin-black','2021-04-27 06:40:43',NULL),(2,'Non Toll Revenue',0,'skin-black',NULL,NULL);
/*!40000 ALTER TABLE `cms_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_privileges_roles`
--

DROP TABLE IF EXISTS `cms_privileges_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_privileges_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int DEFAULT NULL,
  `id_cms_moduls` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_privileges_roles`
--

LOCK TABLES `cms_privileges_roles` WRITE;
/*!40000 ALTER TABLE `cms_privileges_roles` DISABLE KEYS */;
INSERT INTO `cms_privileges_roles` VALUES (12,1,1,1,1,1,1,4,NULL,NULL),(13,1,1,1,1,1,1,12,NULL,NULL),(14,1,1,1,1,1,1,13,NULL,NULL),(15,1,1,1,1,1,1,14,NULL,NULL),(16,1,1,1,1,1,1,15,NULL,NULL),(17,1,1,1,1,1,1,16,NULL,NULL),(18,1,1,1,1,1,1,17,NULL,NULL),(19,1,1,1,1,1,1,18,NULL,NULL),(20,1,1,1,1,1,1,19,NULL,NULL),(21,1,1,1,1,1,1,20,NULL,NULL),(22,1,1,1,1,1,1,21,NULL,NULL),(23,1,1,1,1,1,1,22,NULL,NULL),(24,1,1,1,1,1,1,23,NULL,NULL),(25,1,1,1,1,1,1,24,NULL,NULL),(26,1,1,1,1,1,1,25,NULL,NULL),(27,1,1,1,1,1,1,26,NULL,NULL),(40,1,1,1,1,1,1,27,NULL,NULL),(41,1,1,1,1,1,1,28,NULL,NULL),(42,1,1,1,1,1,1,29,NULL,NULL),(43,1,1,1,1,1,1,30,NULL,NULL),(44,1,1,1,1,1,1,31,NULL,NULL),(45,1,1,1,1,1,1,32,NULL,NULL),(46,1,1,1,1,1,1,33,NULL,NULL),(47,1,1,1,1,1,1,34,NULL,NULL),(48,1,1,1,1,1,1,35,NULL,NULL),(49,1,1,1,1,1,1,36,NULL,NULL),(50,1,1,1,1,1,1,37,NULL,NULL),(51,1,1,1,1,1,1,38,NULL,NULL),(52,1,1,1,1,1,1,39,NULL,NULL),(53,1,1,1,1,1,1,40,NULL,NULL),(54,1,1,1,1,1,1,41,NULL,NULL),(55,1,1,1,1,1,1,42,NULL,NULL),(56,1,1,1,1,1,1,43,NULL,NULL),(57,1,1,1,1,1,1,44,NULL,NULL),(58,1,1,1,1,1,1,45,NULL,NULL),(59,1,1,1,1,1,1,46,NULL,NULL),(60,1,1,1,1,1,1,47,NULL,NULL),(61,1,1,1,1,1,1,48,NULL,NULL),(62,1,1,1,1,1,1,49,NULL,NULL),(63,1,1,1,1,1,1,50,NULL,NULL),(64,1,1,1,1,1,1,51,NULL,NULL),(65,1,1,1,1,1,1,52,NULL,NULL),(66,1,1,1,1,1,1,53,NULL,NULL),(67,1,1,1,1,1,1,54,NULL,NULL),(68,1,1,1,1,1,1,55,NULL,NULL),(69,1,1,1,1,1,1,56,NULL,NULL),(70,1,1,1,1,1,1,57,NULL,NULL),(71,1,1,1,1,1,1,58,NULL,NULL),(72,1,1,1,1,1,1,59,NULL,NULL),(73,1,1,1,1,1,1,60,NULL,NULL),(74,1,1,1,1,1,1,61,NULL,NULL),(75,1,1,1,1,1,2,39,NULL,NULL),(76,1,1,1,1,1,2,54,NULL,NULL),(77,1,1,1,1,1,2,57,NULL,NULL),(78,1,1,1,1,1,2,49,NULL,NULL),(79,1,1,1,1,1,2,50,NULL,NULL),(80,1,1,1,1,1,2,45,NULL,NULL),(81,1,1,1,1,1,2,43,NULL,NULL),(82,1,1,1,1,1,2,41,NULL,NULL),(83,1,1,1,1,1,2,47,NULL,NULL),(84,1,1,1,1,1,2,51,NULL,NULL),(85,1,1,1,1,1,2,46,NULL,NULL),(86,1,1,1,1,1,2,61,NULL,NULL),(87,1,1,1,1,1,2,44,NULL,NULL),(88,1,1,1,1,1,1,62,NULL,NULL),(89,1,1,1,1,1,1,63,NULL,NULL),(90,1,1,1,1,1,1,64,NULL,NULL),(91,1,1,1,1,1,1,65,NULL,NULL);
/*!40000 ALTER TABLE `cms_privileges_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_settings`
--

DROP TABLE IF EXISTS `cms_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `content_input_type` varchar(255) DEFAULT NULL,
  `dataenum` varchar(255) DEFAULT NULL,
  `helper` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_settings`
--

LOCK TABLES `cms_settings` WRITE;
/*!40000 ALTER TABLE `cms_settings` DISABLE KEYS */;
INSERT INTO `cms_settings` VALUES (1,'login_background_color',NULL,'text',NULL,'Input hexacode','2021-04-27 06:40:43',NULL,'Login Register Style','Login Background Color'),(2,'login_font_color',NULL,'text',NULL,'Input hexacode','2021-04-27 06:40:43',NULL,'Login Register Style','Login Font Color'),(3,'login_background_image','uploads/2021-04/03e08b20b0bd4b7c9aa043a8baf24c22.jpg','upload_image',NULL,NULL,'2021-04-27 06:40:43',NULL,'Login Register Style','Login Background Image'),(4,'email_sender','support@crudbooster.com','text',NULL,NULL,'2021-04-27 06:40:43',NULL,'Email Setting','Email Sender'),(5,'smtp_driver','mail','select','smtp,mail,sendmail',NULL,'2021-04-27 06:40:43',NULL,'Email Setting','Mail Driver'),(6,'smtp_host','','text',NULL,NULL,'2021-04-27 06:40:43',NULL,'Email Setting','SMTP Host'),(7,'smtp_port','25','text',NULL,'default 25','2021-04-27 06:40:43',NULL,'Email Setting','SMTP Port'),(8,'smtp_username','','text',NULL,NULL,'2021-04-27 06:40:43',NULL,'Email Setting','SMTP Username'),(9,'smtp_password','','text',NULL,NULL,'2021-04-27 06:40:43',NULL,'Email Setting','SMTP Password'),(10,'appname','Customer Care','text',NULL,NULL,'2021-04-27 06:40:43',NULL,'Application Setting','Application Name'),(11,'default_paper_size','Legal','text',NULL,'Paper size, ex : A4, Legal, etc','2021-04-27 06:40:43',NULL,'Application Setting','Default Paper Print Size'),(12,'logo','uploads/2021-04/3ce5d78da63ddc1c73ff0e87a249c16a.png','upload_image',NULL,NULL,'2021-04-27 06:40:43',NULL,'Application Setting','Logo'),(13,'favicon','uploads/2021-04/ddfa37c65556463aeb170b8e5c6812a6.png','upload_image',NULL,NULL,'2021-04-27 06:40:43',NULL,'Application Setting','Favicon'),(14,'api_debug_mode','true','select','true,false',NULL,'2021-04-27 06:40:43',NULL,'Application Setting','API Debug Mode'),(15,'google_api_key',NULL,'text',NULL,NULL,'2021-04-27 06:40:43',NULL,'Application Setting','Google API Key'),(16,'google_fcm_key',NULL,'text',NULL,NULL,'2021-04-27 06:40:43',NULL,'Application Setting','Google FCM Key');
/*!40000 ALTER TABLE `cms_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_statistic_components`
--

DROP TABLE IF EXISTS `cms_statistic_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_statistic_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int DEFAULT NULL,
  `componentID` varchar(255) DEFAULT NULL,
  `component_name` varchar(255) DEFAULT NULL,
  `area_name` varchar(55) DEFAULT NULL,
  `sorting` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `config` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_statistic_components`
--

LOCK TABLES `cms_statistic_components` WRITE;
/*!40000 ALTER TABLE `cms_statistic_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_statistic_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_statistics`
--

DROP TABLE IF EXISTS `cms_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_statistics` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_statistics`
--

LOCK TABLES `cms_statistics` WRITE;
/*!40000 ALTER TABLE `cms_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users`
--

DROP TABLE IF EXISTS `cms_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `id_cms_privileges` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users`
--

LOCK TABLES `cms_users` WRITE;
/*!40000 ALTER TABLE `cms_users` DISABLE KEYS */;
INSERT INTO `cms_users` VALUES (1,'Super Admin','uploads/1/2021-10/stalin.jpg','admin@bsdtoll.com','$2y$10$Me9jZsa5biU/vLRHa5u4/.UkFhu3j.NiE9ZzILRkekx/GTR26bGmW',1,'2021-04-27 06:40:43','2021-10-22 03:45:37','Active'),(2,'Dimas Kuncoro','uploads/1/2021-04/icons8_user_male_200.png','dimas@bsdtoll.com','$2y$10$FUW.mZ3tYrYD.ytfbrWc3.tIe1mzB.AajEOV4aFXLtOfQCcX2zbVq',2,'2021-04-30 02:49:05',NULL,NULL),(4,'ade julvian','uploads/1/2021-08/whatsapp_image_2021_07_28_at_122432.jpeg','adejul@admin.com','$2y$10$mCGTpcdPQKvyFXQcOpyAr.AGK4wiBuNo3CP2/WXqqJoDzROgNk9bq',1,'2021-08-05 19:14:50',NULL,NULL),(5,'Admin Makassar','uploads/1/2021-12/icons8_user_male_200.png','admin@mks.com','$2y$10$R00OWUYJkcKgvHTkM.ufrejqjNQ0G/cDqNWW4ngNyxIZwwXQy7vD6',1,'2021-12-16 10:03:56',NULL,NULL),(6,'Marcom Makassar','uploads/1/2022-01/icons8_user_male_200.png','marcom@tolmakassar.com','$2y$10$hBjco2uFY1.Q29abHQaDJOnIO5XrHhQKyFcvyvWHa3K0LiE7E2Eda',2,'2022-01-12 11:17:17',NULL,NULL),(7,'NTR','uploads/1/2022-01/icons8_user_male_200.png','ntr@tolmakassar.com','$2y$10$XuN2bseYrn2g7mDNuFpfTuM.Fyc6ELlXs2Pctmc6Ln3wAC6cgMdzW',2,'2022-01-12 11:20:28',NULL,NULL);
/*!40000 ALTER TABLE `cms_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tenant_id` int NOT NULL,
  `fullname` text,
  `card_number` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` longtext,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,1,'Pak Burhan','','32423532423','admin@admin.com','',NULL,'2021-04-30 02:40:24',NULL),(2,1,'Pak Sultan','','243414325234','admin@bsdtoll.com','',NULL,'2021-04-30 02:40:50',NULL);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullname` text NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(25) NOT NULL,
  `address` longtext,
  `gender` varchar(20) DEFAULT NULL,
  `register_from` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'afafa','','','','laki-laki',0,'2021-04-30 02:43:16');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dewan`
--

DROP TABLE IF EXISTS `dewan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dewan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `kategori_posisi` int DEFAULT NULL,
  `nomor` int DEFAULT NULL,
  `deskripsi` longtext,
  `image` varchar(255) DEFAULT NULL,
  `active` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `kategori_parent` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dewan`
--

LOCK TABLES `dewan` WRITE;
/*!40000 ALTER TABLE `dewan` DISABLE KEYS */;
INSERT INTO `dewan` VALUES (1,'Bambang Eko Hargianto',1,1,'<p>Bambang Eko Hargianto adalah Warga Negara Indonesia, berusia 62 tahun dan berdomisili di Jakarta. Lahir di Tegal, 18 Juli 1958. Beliau merupakan lulusan Sarjana Fakultas Teknik Sipil dari Institut Teknologi Bandung pada tahun 1984. Kemudian di tahun 1991 beliau berhasil meraih gelar Master of Civil Engineering, Bidang Teknik Sipil, dari Universitas South of Wales, Australia.</p><p>Sebelum bergabung di Perusahaan, beliau pernah menjabat sebagai Anggota BPJT Kementerian Pekerjaan Umum pada tahun 2013-2017. Disamping itu beliau pernah menjabat sebagai Kepala SUB Direktorat Pembiayaan dan Kerjasama Luar Negeri, Direktorat Bina Program, Direktorat Jenderal Bina Marga pada tahun 2011-2013, dan juga pernah menjabat sebagai Kepala Bidang Investasi BPJT, Department Pekerjaan Umum pada tahun 2005. Pengalaman beliau yang panjang pada Kementerian Pekerjaan Umum tersebut membuktikan bahwa Beliau memiliki wawasan yang luas pada bidang infrastruktur yang dapat memberikan rekomendasi juga pandangan yang baik dan bermanfaat bagi Perusahaan.</p>','uploads/4/2021-08/img_2832.jpg',1,'2021-08-05 19:19:23','2021-10-01 09:19:42',1),(2,'Ricky Camelien',4,2,'<p>Warga negara Indonesia, lahir di Pekanbaru pada tanggal 20 Juni 1971, Saat ini berusia 50 tahun dan berdomisili di Jakarta. Beliau meraih gelar Sarjana Ekonomi, jurusan Akuntansi, dari Universitas Gadjah mada, Yogyakarta (1997) serta gelar Magister Manajemen dari IPMI International Business School Jakarta (2007) dan menjadi salah satu lulusan terbaik. Ditunjuk sebagai Komisaris di Perusahaan sejak Desember 2017 berdasarkan Akta no. 7, Risalah Rapat Umum Pemegang Saham Luar Biasa tahun 2017.</p><p>Pengalaman beliau di bidang manajemen, keuangan, akuntansi, dan audit mencakup Collateral Appraisal and Credit Analyst di PT Bank Umum Nasional serta Audit Supervisor PT Astra International, di Toyota Sales Operation Head, Jakarta. Selanjutnya, Ricky Camelien menjabat sebagai Senior Manager di Indonesia Bank Restructuring Agency (IBRA), Audit Manager di PT Bussan Auto Finance, Kepala Divisi Corporate Accounting and Tax di Bosowa Corporation, Group Controller di Cement Group Bosowa Corporation, dan Financial Controller di PT Pinang Coal Indonesia. Sebelum bergabung dengan Perusahaan, Ricky Camelien pernah menjabat sebagai General Manager Business Reporting and Analysis (2010 - 2013) di PT Nusantara Infrastructure Tbk (NI). Pada 2013, beliau bergabung dengan PT Nusantara Infrastructure Tbk (NI) sebagai Chief Financial Officer.</p><p>Saat ini selain sebagai Komisaris Perusahaan beliau juga memiliki rangkap jabatan sebagai Direktur Pengembangan Bisnis PT Margautama Nusantara, Direktur Utama di PT Nusantara Infrastructure Teknologi dan Chief Financial Officer PT Portco Infranusantara serta PT Intisentosa Alambahtera ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â€šÂ¬Ã…â€œ entitas anak NI yang bergerak di bidang pelabuhan sejak Oktober 2015 hingga sekarang.</p>','uploads/4/2021-08/rc.jpg',1,'2021-08-05 19:20:54','2021-10-01 02:18:08',2),(3,'Purwoto',3,3,'<p>Warga Negara Indonesia, kelahiran Madiun, 5 Februari 1955. Saat ini berusia 66 tahun yang sangat hobi berolahraga Golf.</p><p>Berpengalaman di sektor Keuangan perbankan, pernah menjabat sebagai Pemimpin bagian Kredit Menengah di BNI wilayah 02, Padang, tahun 1997 sd 1999 selanjutnya menjabat sebagai Koordinator Kelompok, Penyelamatan Kredit 2, Divisi Kredit Khusus di PT BNI, dari tahun 1999 sd 2002. Keahliannnya dibidang Keuangan dan Perbankan didukung Gelar Sarjana Ekonomi dari Universitas Islam Indonesia yang didapat di tahun 1980 dan Manajemen Magister di Institut Pertanian Bogor.</p><p>Bergabung di Perusahaan pertama kali pada bulan Januari 2003 sebagai salah satu Direktur di Perusahaan, dan masih dipercaya oleh Perusahaan sebagai Direktur Utama di PT Bintaro Serpong Damai yang dikukuhkan pada Akta no 27, Risalah Rapat Umum Pemegang Saham Luar Biasa, tanggal 21 April 2015.</p>','uploads/4/2021-08/img_2910.jpg',1,'2021-08-05 19:22:27','2021-10-01 00:17:28',2),(4,'Kristianto',4,4,'<p>Umur 61 tahun, lahir di Jakarta, tanggal 31 Mei 1960. Menjabat sebagai Direktur di BSD TOL sejak Januari 2015 yang dikukuhkan dalam RUPSLB, tanggal 21 April 2015. Lahir di Jakarta, tanggal 31 Mei 1960. Beliau menempuh pendidikannya sebagai Sarjana S1 dari Fakultas Teknik Sipil Diponegoro, Semarang pada tahun 1985 dan Sarjana S2, Magister Manajemen dari STIE Nusantara, Jakarta tahun 1997. Ditunjuk sebagai Direktur di Perusahaan sejak April 2015 berdasarkan Akta no 27, Risalah Rapat Umum Pemegang Saham Luar Biasa, tanggal 21 April 2015.</p><p>Beliau memulai karirnya pada tahun 1988 di Jasa Marga sebagai Staff Divisi Pengendalian Operasi, sempat menjabat sebagai Ahli Teknik Madya Manajemen Lalu Lintas pada tahun 1997-2002 dan sekaligus menjabat sebagai Direktur Utama di PT Sarana Margabhakti Utama pada tahun 1996-2001, yang merupakan anak perusahaan dari Jasa Marga. Karir Beliau berlanjut di PT Marga Mandala Sakti (MMS) setelah diangkat menjadi Direktur Operasional dan Pemeliharaan pada tahun 2001-2010, selanjutnya Beliau kembali bergabung di PT Jalantol Lingkarluar Jakarta sebagai Direktur pada tahun 2010-2012, kemudian menjabat sebagai Direktur Utama di PT Sarana Marga Utama pada 2012-2014.</p>','uploads/4/2021-08/img_2957.jpg',1,'2021-08-05 19:22:56','2021-08-17 23:28:20',2),(5,'Amadeo Navalta Bejec',2,5,'<p>Amadeo Navalta Bejec adalah warga negara Filipina. Beliau memperoleh gelar Bachelor of Science in Accounting dan Master of Business Administration dari De La Salle University, Filipina. Beliau memiliki pengalaman lebih dari 20 tahun di berbagai bidang, termasuk keuangan perusahaan, pengembangan bisnis, treasury, dan audit eksternal. Sebelum memasuki industri jalan tol, pengalamannya meliputi industri real estate, perbankan, dan audit.</p><p>Menjabat sebagai VP Corporate Finance di NLEX Corporation, pengembang dan pemegang konsesi jalan tol terbesar di Filipina. Dia melayani perusahaan selama 15 tahun di berbagai fungsi, termasuk pengembangan bisnis, perencanaan perusahaan, keuangan, dan perbendaharaan. Ia terlibat dalam akuisisi dua konsesi jalan tol besar di Filipina.</p><p>Beliau terlibat dalam kegiatan keuangan NLEX Corporation lainnya, termasuk dalam keberhasilan penawaran obligasi perdana perusahaan pada tahun 2014 dan penerbitan obligasi baru pada tahun 2018. Beliau juga membantu mengatur berbagai pinjaman bilateral dan sindikasi dari sejumlah lembaga keuangan terkenal untuk mendanai perusahaan proyek perluasan.</p><p>Mengkhususkan diri dalam pemodelan dan analisis keuangan, ia memainkan peran penting dalam negosiasi dan dokumentasi persyaratan komersial dari berbagai perjanjian konsesi.</p>','uploads/4/2021-08/dsc9156.jpg',1,'2021-08-12 05:02:01','2021-08-19 02:10:12',1);
/*!40000 ALTER TABLE `dewan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gerbang`
--

DROP TABLE IF EXISTS `gerbang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gerbang` (
  `id` int NOT NULL,
  `gerbang` varchar(50) NOT NULL,
  `golongan1` int NOT NULL,
  `golongan2` int NOT NULL,
  `golongan3` int NOT NULL,
  `golongan4` int NOT NULL,
  `golongan5` int NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gerbang`
--

LOCK TABLES `gerbang` WRITE;
/*!40000 ALTER TABLE `gerbang` DISABLE KEYS */;
/*!40000 ALTER TABLE `gerbang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icon`
--

DROP TABLE IF EXISTS `icon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `icon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `unicode` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icon`
--

LOCK TABLES `icon` WRITE;
/*!40000 ALTER TABLE `icon` DISABLE KEYS */;
INSERT INTO `icon` VALUES (1,'glass','&#xf000;','fa fa-glass'),(2,'music','&#xf001;','fa fa-music'),(3,'search','&#xf002;','fa fa-search'),(4,'envelope-o','&#xf003;','fa fa-envelope-o'),(5,'heart','&#xf004;','fa fa-heart'),(6,'star','&#xf005;','fa fa-star'),(7,'star-o','&#xf006;','fa fa-star-o'),(8,'user','&#xf007;','fa fa-user'),(9,'film','&#xf008;','fa fa-film'),(10,'th-large','&#xf009;','fa fa-th-large'),(11,'th','&#xf00a;','fa fa-th'),(12,'th-list','&#xf00b;','fa fa-th-list'),(13,'check','&#xf00c;','fa fa-check'),(14,'times','&#xf00d;','fa fa-times'),(15,'search-plus','&#xf00e;','fa fa-search-plus'),(16,'search-minus','&#xf010;','fa fa-search-minus'),(17,'power-off','&#xf011;','fa fa-power-off'),(18,'signal','&#xf012;','fa fa-signal'),(19,'cog','&#xf013;','fa fa-cog'),(20,'trash-o','&#xf014;','fa fa-trash-o'),(21,'home','&#xf015;','fa fa-home'),(22,'file-o','&#xf016;','fa fa-file-o'),(23,'clock-o','&#xf017;','fa fa-clock-o'),(24,'road','&#xf018;','fa fa-road'),(25,'download','&#xf019;','fa fa-download'),(26,'arrow-circle-o-down','&#xf01a;','fa fa-arrow-circle-o-down'),(27,'arrow-circle-o-up','&#xf01b;','fa fa-arrow-circle-o-up'),(28,'inbox','&#xf01c;','fa fa-inbox'),(29,'play-circle-o','&#xf01d;','fa fa-play-circle-o'),(30,'repeat','&#xf01e;','fa fa-repeat'),(31,'refresh','&#xf021;','fa fa-refresh'),(32,'list-alt','&#xf022;','fa fa-list-alt'),(33,'lock','&#xf023;','fa fa-lock'),(34,'flag','&#xf024;','fa fa-flag'),(35,'headphones','&#xf025;','fa fa-headphones'),(36,'volume-off','&#xf026;','fa fa-volume-off'),(37,'volume-down','&#xf027;','fa fa-volume-down'),(38,'volume-up','&#xf028;','fa fa-volume-up'),(39,'qrcode','&#xf029;','fa fa-qrcode'),(40,'barcode','&#xf02a;','fa fa-barcode'),(41,'tag','&#xf02b;','fa fa-tag'),(42,'tags','&#xf02c;','fa fa-tags'),(43,'book','&#xf02d;','fa fa-book'),(44,'bookmark','&#xf02e;','fa fa-bookmark'),(45,'print','&#xf02f;','fa fa-print'),(46,'camera','&#xf030;','fa fa-camera'),(47,'font','&#xf031;','fa fa-font'),(48,'bold','&#xf032;','fa fa-bold'),(49,'italic','&#xf033;','fa fa-italic'),(50,'text-height','&#xf034;','fa fa-text-height'),(51,'text-width','&#xf035;','fa fa-text-width'),(52,'align-left','&#xf036;','fa fa-align-left'),(53,'align-center','&#xf037;','fa fa-align-center'),(54,'align-right','&#xf038;','fa fa-align-right'),(55,'align-justify','&#xf039;','fa fa-align-justify'),(56,'list','&#xf03a;','fa fa-list'),(57,'outdent','&#xf03b;','fa fa-outdent'),(58,'indent','&#xf03c;','fa fa-indent'),(59,'video-camera','&#xf03d;','fa fa-video-camera'),(60,'picture-o','&#xf03e;','fa fa-picture-o'),(61,'pencil','&#xf040;','fa fa-pencil'),(62,'map-marker','&#xf041;','fa fa-map-marker'),(63,'adjust','&#xf042;','fa fa-adjust'),(64,'tint','&#xf043;','fa fa-tint'),(65,'pencil-square-o','&#xf044;','fa fa-pencil-square-o'),(66,'share-square-o','&#xf045;','fa fa-share-square-o'),(67,'check-square-o','&#xf046;','fa fa-check-square-o'),(68,'arrows','&#xf047;','fa fa-arrows'),(69,'step-backward','&#xf048;','fa fa-step-backward'),(70,'fast-backward','&#xf049;','fa fa-fast-backward'),(71,'backward','&#xf04a;','fa fa-backward'),(72,'play','&#xf04b;','fa fa-play'),(73,'pause','&#xf04c;','fa fa-pause'),(74,'stop','&#xf04d;','fa fa-stop'),(75,'forward','&#xf04e;','fa fa-forward'),(76,'fast-forward','&#xf050;','fa fa-fast-forward'),(77,'step-forward','&#xf051;','fa fa-step-forward'),(78,'eject','&#xf052;','fa fa-eject'),(79,'chevron-left','&#xf053;','fa fa-chevron-left'),(80,'chevron-right','&#xf054;','fa fa-chevron-right'),(81,'plus-circle','&#xf055;','fa fa-plus-circle'),(82,'minus-circle','&#xf056;','fa fa-minus-circle'),(83,'times-circle','&#xf057;','fa fa-times-circle'),(84,'check-circle','&#xf058;','fa fa-check-circle'),(85,'question-circle','&#xf059;','fa fa-question-circle'),(86,'info-circle','&#xf05a;','fa fa-info-circle'),(87,'crosshairs','&#xf05b;','fa fa-crosshairs'),(88,'times-circle-o','&#xf05c;','fa fa-times-circle-o'),(89,'check-circle-o','&#xf05d;','fa fa-check-circle-o'),(90,'ban','&#xf05e;','fa fa-ban'),(91,'arrow-left','&#xf060;','fa fa-arrow-left'),(92,'arrow-right','&#xf061;','fa fa-arrow-right'),(93,'arrow-up','&#xf062;','fa fa-arrow-up'),(94,'arrow-down','&#xf063;','fa fa-arrow-down'),(95,'share','&#xf064;','fa fa-share'),(96,'expand','&#xf065;','fa fa-expand'),(97,'compress','&#xf066;','fa fa-compress'),(98,'plus','&#xf067;','fa fa-plus'),(99,'minus','&#xf068;','fa fa-minus'),(100,'asterisk','&#xf069;','fa fa-asterisk'),(101,'exclamation-circle','&#xf06a;','fa fa-exclamation-circle'),(102,'gift','&#xf06b;','fa fa-gift'),(103,'leaf','&#xf06c;','fa fa-leaf'),(104,'fire','&#xf06d;','fa fa-fire'),(105,'eye','&#xf06e;','fa fa-eye'),(106,'eye-slash','&#xf070;','fa fa-eye-slash'),(107,'exclamation-triangle','&#xf071;','fa fa-exclamation-triangle'),(108,'plane','&#xf072;','fa fa-plane'),(109,'calendar','&#xf073;','fa fa-calendar'),(110,'random','&#xf074;','fa fa-random'),(111,'comment','&#xf075;','fa fa-comment'),(112,'magnet','&#xf076;','fa fa-magnet'),(113,'chevron-up','&#xf077;','fa fa-chevron-up'),(114,'chevron-down','&#xf078;','fa fa-chevron-down'),(115,'retweet','&#xf079;','fa fa-retweet'),(116,'shopping-cart','&#xf07a;','fa fa-shopping-cart'),(117,'folder','&#xf07b;','fa fa-folder'),(118,'folder-open','&#xf07c;','fa fa-folder-open'),(119,'arrows-v','&#xf07d;','fa fa-arrows-v'),(120,'arrows-h','&#xf07e;','fa fa-arrows-h'),(121,'bar-chart','&#xf080;','fa fa-bar-chart'),(122,'twitter-square','&#xf081;','fa fa-twitter-square'),(123,'facebook-square','&#xf082;','fa fa-facebook-square'),(124,'camera-retro','&#xf083;','fa fa-camera-retro'),(125,'key','&#xf084;','fa fa-key'),(126,'cogs','&#xf085;','fa fa-cogs'),(127,'comments','&#xf086;','fa fa-comments'),(128,'thumbs-o-up','&#xf087;','fa fa-thumbs-o-up'),(129,'thumbs-o-down','&#xf088;','fa fa-thumbs-o-down'),(130,'star-half','&#xf089;','fa fa-star-half'),(131,'heart-o','&#xf08a;','fa fa-heart-o'),(132,'sign-out','&#xf08b;','fa fa-sign-out'),(133,'linkedin-square','&#xf08c;','fa fa-linkedin-square'),(134,'thumb-tack','&#xf08d;','fa fa-thumb-tack'),(135,'external-link','&#xf08e;','fa fa-external-link'),(136,'sign-in','&#xf090;','fa fa-sign-in'),(137,'trophy','&#xf091;','fa fa-trophy'),(138,'github-square','&#xf092;','fa fa-github-square'),(139,'upload','&#xf093;','fa fa-upload'),(140,'lemon-o','&#xf094;','fa fa-lemon-o'),(141,'phone','&#xf095;','fa fa-phone'),(142,'square-o','&#xf096;','fa fa-square-o'),(143,'bookmark-o','&#xf097;','fa fa-bookmark-o'),(144,'phone-square','&#xf098;','fa fa-phone-square'),(145,'twitter','&#xf099;','fa fa-twitter'),(146,'facebook','&#xf09a;','fa fa-facebook'),(147,'github','&#xf09b;','fa fa-github'),(148,'unlock','&#xf09c;','fa fa-unlock'),(149,'credit-card','&#xf09d;','fa fa-credit-card'),(150,'rss','&#xf09e;','fa fa-rss'),(151,'hdd-o','&#xf0a0;','fa fa-hdd-o'),(152,'bullhorn','&#xf0a1;','fa fa-bullhorn'),(153,'bell','&#xf0f3;','fa fa-bell'),(154,'certificate','&#xf0a3;','fa fa-certificate'),(155,'hand-o-right','&#xf0a4;','fa fa-hand-o-right'),(156,'hand-o-left','&#xf0a5;','fa fa-hand-o-left'),(157,'hand-o-up','&#xf0a6;','fa fa-hand-o-up'),(158,'hand-o-down','&#xf0a7;','fa fa-hand-o-down'),(159,'arrow-circle-left','&#xf0a8;','fa fa-arrow-circle-left'),(160,'arrow-circle-right','&#xf0a9;','fa fa-arrow-circle-right'),(161,'arrow-circle-up','&#xf0aa;','fa fa-arrow-circle-up'),(162,'arrow-circle-down','&#xf0ab;','fa fa-arrow-circle-down'),(163,'globe','&#xf0ac;','fa fa-globe'),(164,'wrench','&#xf0ad;','fa fa-wrench'),(165,'tasks','&#xf0ae;','fa fa-tasks'),(166,'filter','&#xf0b0;','fa fa-filter'),(167,'briefcase','&#xf0b1;','fa fa-briefcase'),(168,'arrows-alt','&#xf0b2;','fa fa-arrows-alt'),(169,'users','&#xf0c0;','fa fa-users'),(170,'link','&#xf0c1;','fa fa-link'),(171,'cloud','&#xf0c2;','fa fa-cloud'),(172,'flask','&#xf0c3;','fa fa-flask'),(173,'scissors','&#xf0c4;','fa fa-scissors'),(174,'files-o','&#xf0c5;','fa fa-files-o'),(175,'paperclip','&#xf0c6;','fa fa-paperclip'),(176,'floppy-o','&#xf0c7;','fa fa-floppy-o'),(177,'square','&#xf0c8;','fa fa-square'),(178,'bars','&#xf0c9;','fa fa-bars'),(179,'list-ul','&#xf0ca;','fa fa-list-ul'),(180,'list-ol','&#xf0cb;','fa fa-list-ol'),(181,'strikethrough','&#xf0cc;','fa fa-strikethrough'),(182,'underline','&#xf0cd;','fa fa-underline'),(183,'table','&#xf0ce;','fa fa-table'),(184,'magic','&#xf0d0;','fa fa-magic'),(185,'truck','&#xf0d1;','fa fa-truck'),(186,'pinterest','&#xf0d2;','fa fa-pinterest'),(187,'pinterest-square','&#xf0d3;','fa fa-pinterest-square'),(188,'google-plus-square','&#xf0d4;','fa fa-google-plus-square'),(189,'google-plus','&#xf0d5;','fa fa-google-plus'),(190,'money','&#xf0d6;','fa fa-money'),(191,'caret-down','&#xf0d7;','fa fa-caret-down'),(192,'caret-up','&#xf0d8;','fa fa-caret-up'),(193,'caret-left','&#xf0d9;','fa fa-caret-left'),(194,'caret-right','&#xf0da;','fa fa-caret-right'),(195,'columns','&#xf0db;','fa fa-columns'),(196,'sort','&#xf0dc;','fa fa-sort'),(197,'sort-desc','&#xf0dd;','fa fa-sort-desc'),(198,'sort-asc','&#xf0de;','fa fa-sort-asc'),(199,'envelope','&#xf0e0;','fa fa-envelope'),(200,'linkedin','&#xf0e1;','fa fa-linkedin'),(201,'undo','&#xf0e2;','fa fa-undo'),(202,'gavel','&#xf0e3;','fa fa-gavel'),(203,'tachometer','&#xf0e4;','fa fa-tachometer'),(204,'comment-o','&#xf0e5;','fa fa-comment-o'),(205,'comments-o','&#xf0e6;','fa fa-comments-o'),(206,'bolt','&#xf0e7;','fa fa-bolt'),(207,'sitemap','&#xf0e8;','fa fa-sitemap'),(208,'umbrella','&#xf0e9;','fa fa-umbrella'),(209,'clipboard','&#xf0ea;','fa fa-clipboard'),(210,'lightbulb-o','&#xf0eb;','fa fa-lightbulb-o'),(211,'exchange','&#xf0ec;','fa fa-exchange'),(212,'cloud-download','&#xf0ed;','fa fa-cloud-download'),(213,'cloud-upload','&#xf0ee;','fa fa-cloud-upload'),(214,'user-md','&#xf0f0;','fa fa-user-md'),(215,'stethoscope','&#xf0f1;','fa fa-stethoscope'),(216,'suitcase','&#xf0f2;','fa fa-suitcase'),(217,'bell-o','&#xf0a2;','fa fa-bell-o'),(218,'coffee','&#xf0f4;','fa fa-coffee'),(219,'cutlery','&#xf0f5;','fa fa-cutlery'),(220,'file-text-o','&#xf0f6;','fa fa-file-text-o'),(221,'building-o','&#xf0f7;','fa fa-building-o'),(222,'hospital-o','&#xf0f8;','fa fa-hospital-o'),(223,'ambulance','&#xf0f9;','fa fa-ambulance'),(224,'medkit','&#xf0fa;','fa fa-medkit'),(225,'fighter-jet','&#xf0fb;','fa fa-fighter-jet'),(226,'beer','&#xf0fc;','fa fa-beer'),(227,'h-square','&#xf0fd;','fa fa-h-square'),(228,'plus-square','&#xf0fe;','fa fa-plus-square'),(229,'angle-double-left','&#xf100;','fa fa-angle-double-left'),(230,'angle-double-right','&#xf101;','fa fa-angle-double-right'),(231,'angle-double-up','&#xf102;','fa fa-angle-double-up'),(232,'angle-double-down','&#xf103;','fa fa-angle-double-down'),(233,'angle-left','&#xf104;','fa fa-angle-left'),(234,'angle-right','&#xf105;','fa fa-angle-right'),(235,'angle-up','&#xf106;','fa fa-angle-up'),(236,'angle-down','&#xf107;','fa fa-angle-down'),(237,'desktop','&#xf108;','fa fa-desktop'),(238,'laptop','&#xf109;','fa fa-laptop'),(239,'tablet','&#xf10a;','fa fa-tablet'),(240,'mobile','&#xf10b;','fa fa-mobile'),(241,'circle-o','&#xf10c;','fa fa-circle-o'),(242,'quote-left','&#xf10d;','fa fa-quote-left'),(243,'quote-right','&#xf10e;','fa fa-quote-right'),(244,'spinner','&#xf110;','fa fa-spinner'),(245,'circle','&#xf111;','fa fa-circle'),(246,'reply','&#xf112;','fa fa-reply'),(247,'github-alt','&#xf113;','fa fa-github-alt'),(248,'folder-o','&#xf114;','fa fa-folder-o'),(249,'folder-open-o','&#xf115;','fa fa-folder-open-o'),(250,'smile-o','&#xf118;','fa fa-smile-o'),(251,'frown-o','&#xf119;','fa fa-frown-o'),(252,'meh-o','&#xf11a;','fa fa-meh-o'),(253,'gamepad','&#xf11b;','fa fa-gamepad'),(254,'keyboard-o','&#xf11c;','fa fa-keyboard-o'),(255,'flag-o','&#xf11d;','fa fa-flag-o'),(256,'flag-checkered','&#xf11e;','fa fa-flag-checkered'),(257,'terminal','&#xf120;','fa fa-terminal'),(258,'code','&#xf121;','fa fa-code'),(259,'reply-all','&#xf122;','fa fa-reply-all'),(260,'star-half-o','&#xf123;','fa fa-star-half-o'),(261,'location-arrow','&#xf124;','fa fa-location-arrow'),(262,'crop','&#xf125;','fa fa-crop'),(263,'code-fork','&#xf126;','fa fa-code-fork'),(264,'chain-broken','&#xf127;','fa fa-chain-broken'),(265,'question','&#xf128;','fa fa-question'),(266,'info','&#xf129;','fa fa-info'),(267,'exclamation','&#xf12a;','fa fa-exclamation'),(268,'superscript','&#xf12b;','fa fa-superscript'),(269,'subscript','&#xf12c;','fa fa-subscript'),(270,'eraser','&#xf12d;','fa fa-eraser'),(271,'puzzle-piece','&#xf12e;','fa fa-puzzle-piece'),(272,'microphone','&#xf130;','fa fa-microphone'),(273,'microphone-slash','&#xf131;','fa fa-microphone-slash'),(274,'shield','&#xf132;','fa fa-shield'),(275,'calendar-o','&#xf133;','fa fa-calendar-o'),(276,'fire-extinguisher','&#xf134;','fa fa-fire-extinguisher'),(277,'rocket','&#xf135;','fa fa-rocket'),(278,'maxcdn','&#xf136;','fa fa-maxcdn'),(279,'chevron-circle-left','&#xf137;','fa fa-chevron-circle-left'),(280,'chevron-circle-right','&#xf138;','fa fa-chevron-circle-right'),(281,'chevron-circle-up','&#xf139;','fa fa-chevron-circle-up'),(282,'chevron-circle-down','&#xf13a;','fa fa-chevron-circle-down'),(283,'html5','&#xf13b;','fa fa-html5'),(284,'css3','&#xf13c;','fa fa-css3'),(285,'anchor','&#xf13d;','fa fa-anchor'),(286,'unlock-alt','&#xf13e;','fa fa-unlock-alt'),(287,'bullseye','&#xf140;','fa fa-bullseye'),(288,'ellipsis-h','&#xf141;','fa fa-ellipsis-h'),(289,'ellipsis-v','&#xf142;','fa fa-ellipsis-v'),(290,'rss-square','&#xf143;','fa fa-rss-square'),(291,'play-circle','&#xf144;','fa fa-play-circle'),(292,'ticket','&#xf145;','fa fa-ticket'),(293,'minus-square','&#xf146;','fa fa-minus-square'),(294,'minus-square-o','&#xf147;','fa fa-minus-square-o'),(295,'level-up','&#xf148;','fa fa-level-up'),(296,'level-down','&#xf149;','fa fa-level-down'),(297,'check-square','&#xf14a;','fa fa-check-square'),(298,'pencil-square','&#xf14b;','fa fa-pencil-square'),(299,'external-link-square','&#xf14c;','fa fa-external-link-square'),(300,'share-square','&#xf14d;','fa fa-share-square'),(301,'compass','&#xf14e;','fa fa-compass'),(302,'caret-square-o-down','&#xf150;','fa fa-caret-square-o-down'),(303,'caret-square-o-up','&#xf151;','fa fa-caret-square-o-up'),(304,'caret-square-o-right','&#xf152;','fa fa-caret-square-o-right'),(305,'eur','&#xf153;','fa fa-eur'),(306,'gbp','&#xf154;','fa fa-gbp'),(307,'usd','&#xf155;','fa fa-usd'),(308,'inr','&#xf156;','fa fa-inr'),(309,'jpy','&#xf157;','fa fa-jpy'),(310,'rub','&#xf158;','fa fa-rub'),(311,'krw','&#xf159;','fa fa-krw'),(312,'btc','&#xf15a;','fa fa-btc'),(313,'file','&#xf15b;','fa fa-file'),(314,'file-text','&#xf15c;','fa fa-file-text'),(315,'sort-alpha-asc','&#xf15d;','fa fa-sort-alpha-asc'),(316,'sort-alpha-desc','&#xf15e;','fa fa-sort-alpha-desc'),(317,'sort-amount-asc','&#xf160;','fa fa-sort-amount-asc'),(318,'sort-amount-desc','&#xf161;','fa fa-sort-amount-desc'),(319,'sort-numeric-asc','&#xf162;','fa fa-sort-numeric-asc'),(320,'sort-numeric-desc','&#xf163;','fa fa-sort-numeric-desc'),(321,'thumbs-up','&#xf164;','fa fa-thumbs-up'),(322,'thumbs-down','&#xf165;','fa fa-thumbs-down'),(323,'youtube-square','&#xf166;','fa fa-youtube-square'),(324,'youtube','&#xf167;','fa fa-youtube'),(325,'xing','&#xf168;','fa fa-xing'),(326,'xing-square','&#xf169;','fa fa-xing-square'),(327,'youtube-play','&#xf16a;','fa fa-youtube-play'),(328,'dropbox','&#xf16b;','fa fa-dropbox'),(329,'stack-overflow','&#xf16c;','fa fa-stack-overflow'),(330,'instagram','&#xf16d;','fa fa-instagram'),(331,'flickr','&#xf16e;','fa fa-flickr'),(332,'adn','&#xf170;','fa fa-adn'),(333,'bitbucket','&#xf171;','fa fa-bitbucket'),(334,'bitbucket-square','&#xf172;','fa fa-bitbucket-square'),(335,'tumblr','&#xf173;','fa fa-tumblr'),(336,'tumblr-square','&#xf174;','fa fa-tumblr-square'),(337,'long-arrow-down','&#xf175;','fa fa-long-arrow-down'),(338,'long-arrow-up','&#xf176;','fa fa-long-arrow-up'),(339,'long-arrow-left','&#xf177;','fa fa-long-arrow-left'),(340,'long-arrow-right','&#xf178;','fa fa-long-arrow-right'),(341,'apple','&#xf179;','fa fa-apple'),(342,'windows','&#xf17a;','fa fa-windows'),(343,'android','&#xf17b;','fa fa-android'),(344,'linux','&#xf17c;','fa fa-linux'),(345,'dribbble','&#xf17d;','fa fa-dribbble'),(346,'skype','&#xf17e;','fa fa-skype'),(347,'foursquare','&#xf180;','fa fa-foursquare'),(348,'trello','&#xf181;','fa fa-trello'),(349,'female','&#xf182;','fa fa-female'),(350,'male','&#xf183;','fa fa-male'),(351,'gratipay','&#xf184;','fa fa-gratipay'),(352,'sun-o','&#xf185;','fa fa-sun-o'),(353,'moon-o','&#xf186;','fa fa-moon-o'),(354,'archive','&#xf187;','fa fa-archive'),(355,'bug','&#xf188;','fa fa-bug'),(356,'vk','&#xf189;','fa fa-vk'),(357,'weibo','&#xf18a;','fa fa-weibo'),(358,'renren','&#xf18b;','fa fa-renren'),(359,'pagelines','&#xf18c;','fa fa-pagelines'),(360,'stack-exchange','&#xf18d;','fa fa-stack-exchange'),(361,'arrow-circle-o-right','&#xf18e;','fa fa-arrow-circle-o-right'),(362,'arrow-circle-o-left','&#xf190;','fa fa-arrow-circle-o-left'),(363,'caret-square-o-left','&#xf191;','fa fa-caret-square-o-left'),(364,'dot-circle-o','&#xf192;','fa fa-dot-circle-o'),(365,'wheelchair','&#xf193;','fa fa-wheelchair'),(366,'vimeo-square','&#xf194;','fa fa-vimeo-square'),(367,'try','&#xf195;','fa fa-try'),(368,'plus-square-o','&#xf196;','fa fa-plus-square-o'),(369,'space-shuttle','&#xf197;','fa fa-space-shuttle'),(370,'slack','&#xf198;','fa fa-slack'),(371,'envelope-square','&#xf199;','fa fa-envelope-square'),(372,'wordpress','&#xf19a;','fa fa-wordpress'),(373,'openid','&#xf19b;','fa fa-openid'),(374,'university','&#xf19c;','fa fa-university'),(375,'graduation-cap','&#xf19d;','fa fa-graduation-cap'),(376,'yahoo','&#xf19e;','fa fa-yahoo'),(377,'google','&#xf1a0;','fa fa-google'),(378,'reddit','&#xf1a1;','fa fa-reddit'),(379,'reddit-square','&#xf1a2;','fa fa-reddit-square'),(380,'stumbleupon-circle','&#xf1a3;','fa fa-stumbleupon-circle'),(381,'stumbleupon','&#xf1a4;','fa fa-stumbleupon'),(382,'delicious','&#xf1a5;','fa fa-delicious'),(383,'digg','&#xf1a6;','fa fa-digg'),(384,'pied-piper-pp','&#xf1a7;','fa fa-pied-piper-pp'),(385,'pied-piper-alt','&#xf1a8;','fa fa-pied-piper-alt'),(386,'drupal','&#xf1a9;','fa fa-drupal'),(387,'joomla','&#xf1aa;','fa fa-joomla'),(388,'language','&#xf1ab;','fa fa-language'),(389,'fax','&#xf1ac;','fa fa-fax'),(390,'building','&#xf1ad;','fa fa-building'),(391,'child','&#xf1ae;','fa fa-child'),(392,'paw','&#xf1b0;','fa fa-paw'),(393,'spoon','&#xf1b1;','fa fa-spoon'),(394,'cube','&#xf1b2;','fa fa-cube'),(395,'cubes','&#xf1b3;','fa fa-cubes'),(396,'behance','&#xf1b4;','fa fa-behance'),(397,'behance-square','&#xf1b5;','fa fa-behance-square'),(398,'steam','&#xf1b6;','fa fa-steam'),(399,'steam-square','&#xf1b7;','fa fa-steam-square'),(400,'recycle','&#xf1b8;','fa fa-recycle'),(401,'car','&#xf1b9;','fa fa-car'),(402,'taxi','&#xf1ba;','fa fa-taxi'),(403,'tree','&#xf1bb;','fa fa-tree'),(404,'spotify','&#xf1bc;','fa fa-spotify'),(405,'deviantart','&#xf1bd;','fa fa-deviantart'),(406,'soundcloud','&#xf1be;','fa fa-soundcloud'),(407,'database','&#xf1c0;','fa fa-database'),(408,'file-pdf-o','&#xf1c1;','fa fa-file-pdf-o'),(409,'file-word-o','&#xf1c2;','fa fa-file-word-o'),(410,'file-excel-o','&#xf1c3;','fa fa-file-excel-o'),(411,'file-powerpoint-o','&#xf1c4;','fa fa-file-powerpoint-o'),(412,'file-image-o','&#xf1c5;','fa fa-file-image-o'),(413,'file-archive-o','&#xf1c6;','fa fa-file-archive-o'),(414,'file-audio-o','&#xf1c7;','fa fa-file-audio-o'),(415,'file-video-o','&#xf1c8;','fa fa-file-video-o'),(416,'file-code-o','&#xf1c9;','fa fa-file-code-o'),(417,'vine','&#xf1ca;','fa fa-vine'),(418,'codepen','&#xf1cb;','fa fa-codepen'),(419,'jsfiddle','&#xf1cc;','fa fa-jsfiddle'),(420,'life-ring','&#xf1cd;','fa fa-life-ring'),(421,'circle-o-notch','&#xf1ce;','fa fa-circle-o-notch'),(422,'rebel','&#xf1d0;','fa fa-rebel'),(423,'empire','&#xf1d1;','fa fa-empire'),(424,'git-square','&#xf1d2;','fa fa-git-square'),(425,'git','&#xf1d3;','fa fa-git'),(426,'hacker-news','&#xf1d4;','fa fa-hacker-news'),(427,'tencent-weibo','&#xf1d5;','fa fa-tencent-weibo'),(428,'qq','&#xf1d6;','fa fa-qq'),(429,'weixin','&#xf1d7;','fa fa-weixin'),(430,'paper-plane','&#xf1d8;','fa fa-paper-plane'),(431,'paper-plane-o','&#xf1d9;','fa fa-paper-plane-o'),(432,'history','&#xf1da;','fa fa-history'),(433,'circle-thin','&#xf1db;','fa fa-circle-thin'),(434,'header','&#xf1dc;','fa fa-header'),(435,'paragraph','&#xf1dd;','fa fa-paragraph'),(436,'sliders','&#xf1de;','fa fa-sliders'),(437,'share-alt','&#xf1e0;','fa fa-share-alt'),(438,'share-alt-square','&#xf1e1;','fa fa-share-alt-square'),(439,'bomb','&#xf1e2;','fa fa-bomb'),(440,'futbol-o','&#xf1e3;','fa fa-futbol-o'),(441,'tty','&#xf1e4;','fa fa-tty'),(442,'binoculars','&#xf1e5;','fa fa-binoculars'),(443,'plug','&#xf1e6;','fa fa-plug'),(444,'slideshare','&#xf1e7;','fa fa-slideshare'),(445,'twitch','&#xf1e8;','fa fa-twitch'),(446,'yelp','&#xf1e9;','fa fa-yelp'),(447,'newspaper-o','&#xf1ea;','fa fa-newspaper-o'),(448,'wifi','&#xf1eb;','fa fa-wifi'),(449,'calculator','&#xf1ec;','fa fa-calculator'),(450,'paypal','&#xf1ed;','fa fa-paypal'),(451,'google-wallet','&#xf1ee;','fa fa-google-wallet'),(452,'cc-visa','&#xf1f0;','fa fa-cc-visa'),(453,'cc-mastercard','&#xf1f1;','fa fa-cc-mastercard'),(454,'cc-discover','&#xf1f2;','fa fa-cc-discover'),(455,'cc-amex','&#xf1f3;','fa fa-cc-amex'),(456,'cc-paypal','&#xf1f4;','fa fa-cc-paypal'),(457,'cc-stripe','&#xf1f5;','fa fa-cc-stripe'),(458,'bell-slash','&#xf1f6;','fa fa-bell-slash'),(459,'bell-slash-o','&#xf1f7;','fa fa-bell-slash-o'),(460,'trash','&#xf1f8;','fa fa-trash'),(461,'copyright','&#xf1f9;','fa fa-copyright'),(462,'at','&#xf1fa;','fa fa-at'),(463,'eyedropper','&#xf1fb;','fa fa-eyedropper'),(464,'paint-brush','&#xf1fc;','fa fa-paint-brush'),(465,'birthday-cake','&#xf1fd;','fa fa-birthday-cake'),(466,'area-chart','&#xf1fe;','fa fa-area-chart'),(467,'pie-chart','&#xf200;','fa fa-pie-chart'),(468,'line-chart','&#xf201;','fa fa-line-chart'),(469,'lastfm','&#xf202;','fa fa-lastfm'),(470,'lastfm-square','&#xf203;','fa fa-lastfm-square'),(471,'toggle-off','&#xf204;','fa fa-toggle-off'),(472,'toggle-on','&#xf205;','fa fa-toggle-on'),(473,'bicycle','&#xf206;','fa fa-bicycle'),(474,'bus','&#xf207;','fa fa-bus'),(475,'ioxhost','&#xf208;','fa fa-ioxhost'),(476,'angellist','&#xf209;','fa fa-angellist'),(477,'cc','&#xf20a;','fa fa-cc'),(478,'ils','&#xf20b;','fa fa-ils'),(479,'meanpath','&#xf20c;','fa fa-meanpath'),(480,'buysellads','&#xf20d;','fa fa-buysellads'),(481,'connectdevelop','&#xf20e;','fa fa-connectdevelop'),(482,'dashcube','&#xf210;','fa fa-dashcube'),(483,'forumbee','&#xf211;','fa fa-forumbee'),(484,'leanpub','&#xf212;','fa fa-leanpub'),(485,'sellsy','&#xf213;','fa fa-sellsy'),(486,'shirtsinbulk','&#xf214;','fa fa-shirtsinbulk'),(487,'simplybuilt','&#xf215;','fa fa-simplybuilt'),(488,'skyatlas','&#xf216;','fa fa-skyatlas'),(489,'cart-plus','&#xf217;','fa fa-cart-plus'),(490,'cart-arrow-down','&#xf218;','fa fa-cart-arrow-down'),(491,'diamond','&#xf219;','fa fa-diamond'),(492,'ship','&#xf21a;','fa fa-ship'),(493,'user-secret','&#xf21b;','fa fa-user-secret'),(494,'motorcycle','&#xf21c;','fa fa-motorcycle'),(495,'street-view','&#xf21d;','fa fa-street-view'),(496,'heartbeat','&#xf21e;','fa fa-heartbeat'),(497,'venus','&#xf221;','fa fa-venus'),(498,'mars','&#xf222;','fa fa-mars'),(499,'mercury','&#xf223;','fa fa-mercury'),(500,'transgender','&#xf224;','fa fa-transgender'),(501,'transgender-alt','&#xf225;','fa fa-transgender-alt'),(502,'venus-double','&#xf226;','fa fa-venus-double'),(503,'mars-double','&#xf227;','fa fa-mars-double'),(504,'venus-mars','&#xf228;','fa fa-venus-mars'),(505,'mars-stroke','&#xf229;','fa fa-mars-stroke'),(506,'mars-stroke-v','&#xf22a;','fa fa-mars-stroke-v'),(507,'mars-stroke-h','&#xf22b;','fa fa-mars-stroke-h'),(508,'neuter','&#xf22c;','fa fa-neuter'),(509,'genderless','&#xf22d;','fa fa-genderless'),(510,'facebook-official','&#xf230;','fa fa-facebook-official'),(511,'pinterest-p','&#xf231;','fa fa-pinterest-p'),(512,'whatsapp','&#xf232;','fa fa-whatsapp'),(513,'server','&#xf233;','fa fa-server'),(514,'user-plus','&#xf234;','fa fa-user-plus'),(515,'user-times','&#xf235;','fa fa-user-times'),(516,'bed','&#xf236;','fa fa-bed'),(517,'viacoin','&#xf237;','fa fa-viacoin'),(518,'train','&#xf238;','fa fa-train'),(519,'subway','&#xf239;','fa fa-subway'),(520,'medium','&#xf23a;','fa fa-medium'),(521,'y-combinator','&#xf23b;','fa fa-y-combinator'),(522,'optin-monster','&#xf23c;','fa fa-optin-monster'),(523,'opencart','&#xf23d;','fa fa-opencart'),(524,'expeditedssl','&#xf23e;','fa fa-expeditedssl'),(525,'battery-full','&#xf240;','fa fa-battery-full'),(526,'battery-three-quarters','&#xf241;','fa fa-battery-three-quarters'),(527,'battery-half','&#xf242;','fa fa-battery-half'),(528,'battery-quarter','&#xf243;','fa fa-battery-quarter'),(529,'battery-empty','&#xf244;','fa fa-battery-empty'),(530,'mouse-pointer','&#xf245;','fa fa-mouse-pointer'),(531,'i-cursor','&#xf246;','fa fa-i-cursor'),(532,'object-group','&#xf247;','fa fa-object-group'),(533,'object-ungroup','&#xf248;','fa fa-object-ungroup'),(534,'sticky-note','&#xf249;','fa fa-sticky-note'),(535,'sticky-note-o','&#xf24a;','fa fa-sticky-note-o'),(536,'cc-jcb','&#xf24b;','fa fa-cc-jcb'),(537,'cc-diners-club','&#xf24c;','fa fa-cc-diners-club'),(538,'clone','&#xf24d;','fa fa-clone'),(539,'balance-scale','&#xf24e;','fa fa-balance-scale'),(540,'hourglass-o','&#xf250;','fa fa-hourglass-o'),(541,'hourglass-start','&#xf251;','fa fa-hourglass-start'),(542,'hourglass-half','&#xf252;','fa fa-hourglass-half'),(543,'hourglass-end','&#xf253;','fa fa-hourglass-end'),(544,'hourglass','&#xf254;','fa fa-hourglass'),(545,'hand-rock-o','&#xf255;','fa fa-hand-rock-o'),(546,'hand-paper-o','&#xf256;','fa fa-hand-paper-o'),(547,'hand-scissors-o','&#xf257;','fa fa-hand-scissors-o'),(548,'hand-lizard-o','&#xf258;','fa fa-hand-lizard-o'),(549,'hand-spock-o','&#xf259;','fa fa-hand-spock-o'),(550,'hand-pointer-o','&#xf25a;','fa fa-hand-pointer-o'),(551,'hand-peace-o','&#xf25b;','fa fa-hand-peace-o'),(552,'trademark','&#xf25c;','fa fa-trademark'),(553,'registered','&#xf25d;','fa fa-registered'),(554,'creative-commons','&#xf25e;','fa fa-creative-commons'),(555,'gg','&#xf260;','fa fa-gg'),(556,'gg-circle','&#xf261;','fa fa-gg-circle'),(557,'tripadvisor','&#xf262;','fa fa-tripadvisor'),(558,'odnoklassniki','&#xf263;','fa fa-odnoklassniki'),(559,'odnoklassniki-square','&#xf264;','fa fa-odnoklassniki-square'),(560,'get-pocket','&#xf265;','fa fa-get-pocket'),(561,'wikipedia-w','&#xf266;','fa fa-wikipedia-w'),(562,'safari','&#xf267;','fa fa-safari'),(563,'chrome','&#xf268;','fa fa-chrome'),(564,'firefox','&#xf269;','fa fa-firefox'),(565,'opera','&#xf26a;','fa fa-opera'),(566,'internet-explorer','&#xf26b;','fa fa-internet-explorer'),(567,'television','&#xf26c;','fa fa-television'),(568,'contao','&#xf26d;','fa fa-contao'),(569,'500px','&#xf26e;','fa fa-500px'),(570,'amazon','&#xf270;','fa fa-amazon'),(571,'calendar-plus-o','&#xf271;','fa fa-calendar-plus-o'),(572,'calendar-minus-o','&#xf272;','fa fa-calendar-minus-o'),(573,'calendar-times-o','&#xf273;','fa fa-calendar-times-o'),(574,'calendar-check-o','&#xf274;','fa fa-calendar-check-o'),(575,'industry','&#xf275;','fa fa-industry'),(576,'map-pin','&#xf276;','fa fa-map-pin'),(577,'map-signs','&#xf277;','fa fa-map-signs'),(578,'map-o','&#xf278;','fa fa-map-o'),(579,'map','&#xf279;','fa fa-map'),(580,'commenting','&#xf27a;','fa fa-commenting'),(581,'commenting-o','&#xf27b;','fa fa-commenting-o'),(582,'houzz','&#xf27c;','fa fa-houzz'),(583,'vimeo','&#xf27d;','fa fa-vimeo'),(584,'black-tie','&#xf27e;','fa fa-black-tie'),(585,'fonticons','&#xf280;','fa fa-fonticons'),(586,'reddit-alien','&#xf281;','fa fa-reddit-alien'),(587,'edge','&#xf282;','fa fa-edge'),(588,'credit-card-alt','&#xf283;','fa fa-credit-card-alt'),(589,'codiepie','&#xf284;','fa fa-codiepie'),(590,'modx','&#xf285;','fa fa-modx'),(591,'fort-awesome','&#xf286;','fa fa-fort-awesome'),(592,'usb','&#xf287;','fa fa-usb'),(593,'product-hunt','&#xf288;','fa fa-product-hunt'),(594,'mixcloud','&#xf289;','fa fa-mixcloud'),(595,'scribd','&#xf28a;','fa fa-scribd'),(596,'pause-circle','&#xf28b;','fa fa-pause-circle'),(597,'pause-circle-o','&#xf28c;','fa fa-pause-circle-o'),(598,'stop-circle','&#xf28d;','fa fa-stop-circle'),(599,'stop-circle-o','&#xf28e;','fa fa-stop-circle-o'),(600,'shopping-bag','&#xf290;','fa fa-shopping-bag'),(601,'shopping-basket','&#xf291;','fa fa-shopping-basket'),(602,'hashtag','&#xf292;','fa fa-hashtag'),(603,'bluetooth','&#xf293;','fa fa-bluetooth'),(604,'bluetooth-b','&#xf294;','fa fa-bluetooth-b'),(605,'percent','&#xf295;','fa fa-percent'),(606,'gitlab','&#xf296;','fa fa-gitlab'),(607,'wpbeginner','&#xf297;','fa fa-wpbeginner'),(608,'wpforms','&#xf298;','fa fa-wpforms'),(609,'envira','&#xf299;','fa fa-envira'),(610,'universal-access','&#xf29a;','fa fa-universal-access'),(611,'wheelchair-alt','&#xf29b;','fa fa-wheelchair-alt'),(612,'question-circle-o','&#xf29c;','fa fa-question-circle-o'),(613,'blind','&#xf29d;','fa fa-blind'),(614,'audio-description','&#xf29e;','fa fa-audio-description'),(615,'volume-control-phone','&#xf2a0;','fa fa-volume-control-phone'),(616,'braille','&#xf2a1;','fa fa-braille'),(617,'assistive-listening-systems','&#xf2a2;','fa fa-assistive-listening-systems'),(618,'american-sign-language-interpreting','&#xf2a3;','fa fa-american-sign-language-interpreting'),(619,'deaf','&#xf2a4;','fa fa-deaf'),(620,'glide','&#xf2a5;','fa fa-glide'),(621,'glide-g','&#xf2a6;','fa fa-glide-g'),(622,'sign-language','&#xf2a7;','fa fa-sign-language'),(623,'low-vision','&#xf2a8;','fa fa-low-vision'),(624,'viadeo','&#xf2a9;','fa fa-viadeo'),(625,'viadeo-square','&#xf2aa;','fa fa-viadeo-square'),(626,'snapchat','&#xf2ab;','fa fa-snapchat'),(627,'snapchat-ghost','&#xf2ac;','fa fa-snapchat-ghost'),(628,'snapchat-square','&#xf2ad;','fa fa-snapchat-square'),(629,'pied-piper','&#xf2ae;','fa fa-pied-piper'),(630,'first-order','&#xf2b0;','fa fa-first-order'),(631,'yoast','&#xf2b1;','fa fa-yoast'),(632,'themeisle','&#xf2b2;','fa fa-themeisle'),(633,'google-plus-official','&#xf2b3;','fa fa-google-plus-official'),(634,'font-awesome','&#xf2b4;','fa fa-font-awesome'),(635,'handshake-o','&#xf2b5;','fa fa-handshake-o'),(636,'envelope-open','&#xf2b6;','fa fa-envelope-open'),(637,'envelope-open-o','&#xf2b7;','fa fa-envelope-open-o'),(638,'linode','&#xf2b8;','fa fa-linode'),(639,'address-book','&#xf2b9;','fa fa-address-book'),(640,'address-book-o','&#xf2ba;','fa fa-address-book-o'),(641,'address-card','&#xf2bb;','fa fa-address-card'),(642,'address-card-o','&#xf2bc;','fa fa-address-card-o'),(643,'user-circle','&#xf2bd;','fa fa-user-circle'),(644,'user-circle-o','&#xf2be;','fa fa-user-circle-o'),(645,'user-o','&#xf2c0;','fa fa-user-o'),(646,'id-badge','&#xf2c1;','fa fa-id-badge'),(647,'id-card','&#xf2c2;','fa fa-id-card'),(648,'id-card-o','&#xf2c3;','fa fa-id-card-o'),(649,'quora','&#xf2c4;','fa fa-quora'),(650,'free-code-camp','&#xf2c5;','fa fa-free-code-camp'),(651,'telegram','&#xf2c6;','fa fa-telegram'),(652,'thermometer-full','&#xf2c7;','fa fa-thermometer-full'),(653,'thermometer-three-quarters','&#xf2c8;','fa fa-thermometer-three-quarters'),(654,'thermometer-half','&#xf2c9;','fa fa-thermometer-half'),(655,'thermometer-quarter','&#xf2ca;','fa fa-thermometer-quarter'),(656,'thermometer-empty','&#xf2cb;','fa fa-thermometer-empty'),(657,'shower','&#xf2cc;','fa fa-shower'),(658,'bath','&#xf2cd;','fa fa-bath'),(659,'podcast','&#xf2ce;','fa fa-podcast'),(660,'window-maximize','&#xf2d0;','fa fa-window-maximize'),(661,'window-minimize','&#xf2d1;','fa fa-window-minimize'),(662,'window-restore','&#xf2d2;','fa fa-window-restore'),(663,'window-close','&#xf2d3;','fa fa-window-close'),(664,'window-close-o','&#xf2d4;','fa fa-window-close-o'),(665,'bandcamp','&#xf2d5;','fa fa-bandcamp'),(666,'grav','&#xf2d6;','fa fa-grav'),(667,'etsy','&#xf2d7;','fa fa-etsy'),(668,'imdb','&#xf2d8;','fa fa-imdb'),(669,'ravelry','&#xf2d9;','fa fa-ravelry'),(670,'eercast','&#xf2da;','fa fa-eercast'),(671,'microchip','&#xf2db;','fa fa-microchip'),(672,'snowflake-o','&#xf2dc;','fa fa-snowflake-o'),(673,'superpowers','&#xf2dd;','fa fa-superpowers'),(674,'wpexplorer','&#xf2de;','fa fa-wpexplorer'),(675,'meetup','&#xf2e0;','fa fa-meetup');
/*!40000 ALTER TABLE `icon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_tarif`
--

DROP TABLE IF EXISTS `info_tarif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `info_tarif` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gerbang` varchar(50) NOT NULL,
  `ruas` varchar(50) DEFAULT NULL,
  `golongan1` int DEFAULT '0',
  `golongan2` int DEFAULT '0',
  `golongan3` int DEFAULT '0',
  `golongan4` int DEFAULT '0',
  `golongan5` int DEFAULT '0',
  `gol1_int` int DEFAULT NULL,
  `gol2_int` int DEFAULT NULL,
  `gol3_int` int DEFAULT NULL,
  `gol4_int` int DEFAULT NULL,
  `gol5_int` int DEFAULT NULL,
  `total1` int DEFAULT NULL,
  `total2` int DEFAULT NULL,
  `total3` int DEFAULT NULL,
  `total4` int DEFAULT NULL,
  `total5` int DEFAULT NULL,
  `integrasi` varchar(50) DEFAULT NULL,
  `total` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `maps` varchar(255) DEFAULT NULL,
  `arah` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_tarif`
--

LOCK TABLES `info_tarif` WRITE;
/*!40000 ALTER TABLE `info_tarif` DISABLE KEYS */;
INSERT INTO `info_tarif` VALUES (1,'Gerbang Ramp Parangloe','-',15000,23000,23000,32000,32000,0,0,0,0,0,15000,23000,23000,32000,32000,'0','Total','uploads/7/2022-01/img_3041.JPG',NULL,NULL,'-'),(2,'Gerbang Tamalanrea','-',10000,17000,17000,25000,25000,0,0,0,0,0,10000,17000,17000,25000,25000,'0','Total','uploads/7/2022-01/tma.JPG',NULL,NULL,'-'),(3,'Gerbang Ramp Bira Barat','-',5500,9000,9000,13000,13000,0,0,0,0,0,5500,9000,9000,13000,13000,'0','Total','uploads/7/2022-01/brb.JPG',NULL,NULL,'-'),(4,'Gerbang Ramp Bira Timur','-',5500,9000,9000,13000,13000,0,0,0,0,0,5500,9000,9000,13000,13000,'0','Total','uploads/7/2022-01/brt.JPG',NULL,NULL,'-'),(5,'Gerbang Cambaya','-',10000,14000,14000,19000,19000,0,0,0,0,0,10000,14000,14000,19000,19000,'0','Total','uploads/7/2022-01/cby_medium.JPG',NULL,NULL,'-'),(6,'Gerbang Biringkanaya','-',10000,17000,17000,25000,25000,0,0,0,0,0,10000,17000,17000,25000,25000,'0','Total','uploads/7/2022-01/brk_medium.JPG',NULL,NULL,'-'),(11,'Gerbang Kaluku Bodoa','-',10000,14000,14000,19000,19000,0,0,0,0,0,10000,14000,14000,19000,19000,'0','Total','uploads/7/2022-01/klb.JPG',NULL,NULL,'-'),(12,'Gerbang Ramp Tallo Timur','-',10000,14000,14000,19000,19000,0,0,0,0,0,10000,14000,14000,19000,19000,'0','Total','uploads/1/2021-12/gerbang_ramp_tallo_timur.jpeg',NULL,NULL,'-'),(15,'Gerbang Parangloe','-',10000,14000,14000,19000,19000,0,0,0,0,0,10000,14000,14000,19000,19000,'0','Total','uploads/7/2022-01/img_4204.JPG',NULL,NULL,'-'),(16,'Gerbang Ramp Tallo Barat','-',4000,6000,6000,8000,8000,0,0,0,0,0,4000,6000,6000,8000,8000,'0','Total','uploads/7/2022-01/img_4203.JPG',NULL,NULL,'-');
/*!40000 ALTER TABLE `info_tarif` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_tol`
--

DROP TABLE IF EXISTS `info_tol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `info_tol` (
  `id` int NOT NULL AUTO_INCREMENT,
  `judul` varchar(25) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `btn` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `active` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_tol`
--

LOCK TABLES `info_tol` WRITE;
/*!40000 ALTER TABLE `info_tol` DISABLE KEYS */;
INSERT INTO `info_tol` VALUES (1,'Facebook','146','btn-facebook','https://www.facebook.com/groups/688279698009683',1,'2021-07-31 00:26:31'),(2,'Instagram','330','btn-instagram','https://www.instagram.com/infotolmakassar/',1,'2021-07-31 00:28:15');
/*!40000 ALTER TABLE `info_tol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kartu_all_time`
--

DROP TABLE IF EXISTS `kartu_all_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kartu_all_time` (
  `id` int NOT NULL AUTO_INCREMENT,
  `metode` varchar(15) DEFAULT NULL,
  `kartu` varchar(20) DEFAULT NULL,
  `jumlah_transaksi` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kartu_all_time`
--

LOCK TABLES `kartu_all_time` WRITE;
/*!40000 ALTER TABLE `kartu_all_time` DISABLE KEYS */;
INSERT INTO `kartu_all_time` VALUES (18523491,'MANDIRI','6032984000844112',1),(18523492,'MANDIRI','6032984069862096',1),(18523493,'BCA','0145000137467078',1),(18523494,'MANDIRI','6032981044806164',1),(18523495,'MANDIRI','6032981038211819',1),(18523496,'BRI','6013501806355367',1),(18523497,'MANDIRI','6032981050844752',1),(18523498,'MANDIRI','6032981045525474',1),(18523499,'BCA','0145000631020563',1),(18523500,'BRI','6013500147880208',1),(18523501,'BCA','0145000133880738',1),(18523502,'BNI','7546130007627467',1),(18523503,'BCA','0145007205407035',1),(18523504,'MANDIRI','6032981055321574',1),(18523505,'BCA','0145000141087441',1),(18523506,'BCA','0145002800050181',1),(18523507,'BCA','0145008200403649',1),(18523508,'BCA','0145000119288666',1),(18523509,'BRI','6013500612679820',1),(18523510,'MANDIRI','6032984037383290',1),(18523511,'BCA','0145000152227225',1),(18523512,'BCA','0145000134512470',1),(18523513,'BCA','0145000151492507',1),(18523514,'BRI','6013501810202373',1),(18523515,'MANDIRI','6032986066761411',1),(18523516,'BCA','0145002500533064',1),(18523517,'BCA','0145000118332622',1),(18523518,'MANDIRI','6032986066740746',1),(18523519,'MANDIRI','6032986074735571',1),(18523520,'MANDIRI','6032986057211228',1),(18523521,'BCA','0145000137508855',1),(18523522,'BCA','0145000641551409',1),(18523523,'MANDIRI','6032981054383682',1),(18523524,'BCA','0145000118945928',1),(18523525,'BCA','0145007205425144',1),(18523526,'BCA','0145000135167456',1),(18523527,'MANDIRI','6032986066735688',1),(18523528,'BCA','0145000136094931',1),(18523529,'MANDIRI','6032981046802484',1),(18523530,'BCA','0145000138709551',1),(18523531,'BRI','6013502105343609',1),(18523532,'BNI','7546000004989808',1),(18523533,'BRI','6013502004477391',1),(18523534,'MANDIRI','6032986037644712',1),(18523535,'BCA','0145000149488906',1),(18523536,'MANDIRI','6032986063762354',1),(18523537,'BCA','0145000633460130',1),(18523538,'BCA','0145000142844873',1),(18523539,'MANDIRI','6032981055352157',1),(18523540,'BNI','7546130004110921',1),(18523541,'BRI','6013501809217028',1),(18523542,'MANDIRI','6032981040402299',1),(18523543,'MANDIRI','6032986072372369',1),(18523544,'BCA','0145008201091088',1),(18523545,'MANDIRI','6032981041355967',1),(18523546,'BCA','0145000600923490',1),(18523547,'BRI','6013500138457784',1),(18523548,'BRI','6013500122683296',1),(18523549,'MANDIRI','6032981037291234',1),(18523550,'BCA','0145000118877907',1),(18523551,'MANDIRI','6032981042705491',1),(18523552,'MANDIRI','6032986047058234',1),(18523553,'MANDIRI','6032984042707392',1),(18523554,'MANDIRI','6032981055150130',1),(18523555,'BCA','0145007203379533',1),(18523556,'MANDIRI','6032986043131134',1),(18523557,'BCA','0145000136835051',1),(18523558,'BCA','0145000633859554',1),(18523559,'MANDIRI','6032986059083161',1),(18523560,'BCA','0145000639987730',1),(18523561,'MANDIRI','6032986088073902',1),(18523562,'BCA','0145000600909127',1),(18523563,'BNI','7546130001156521',1),(18523564,'MANDIRI','6032981048337596',1),(18523565,'BCA','0145000633432105',1),(18523566,'BRI','6013500143094861',1),(18523567,'BRI','6013500136995652',1),(18523568,'MANDIRI','6032981054844022',1),(18523569,'MANDIRI','6032981055322564',1),(18523570,'MANDIRI','6032981054778170',1),(18523571,'BNI','7546000005823865',1),(18523572,'BCA','0145000636202000',1),(18523573,'BCA','0145000637007408',1),(18523574,'BCA','0145000146298787',1),(18523575,'BCA','0145000633860156',1),(18523576,'BCA','0145000650233279',1),(18523577,'MANDIRI','6032983401278615',1),(18523578,'MANDIRI','6032986077358611',1),(18523579,'BCA','0145000148888460',1),(18523580,'BRI','6013500141866690',1),(18523581,'BNI','7546020004521229',1),(18523582,'BCA','0145000629541273',1),(18523583,'BCA','0145000631094501',1),(18523584,'MANDIRI','6032981041033515',1),(18523585,'MANDIRI','6032984068185796',1),(18523586,'MANDIRI','6032984066667662',1),(18523587,'BNI','7546020002119828',1),(18523588,'BCA','0145000137505703',1),(18523589,'BCA','0145000138045204',1),(18523590,'MANDIRI','6032986030092455',1),(18523591,'MANDIRI','6032986059072321',1),(18523592,'MANDIRI','6032986099986712',1),(18523593,'MANDIRI','6032981054380142',1),(18523594,'BRI','6013500429562656',1),(18523595,'BRI','6013500429339428',1),(18523596,'MANDIRI','6032981054775226',1),(18523597,'BRI','6013500414312505',1),(18523598,'MANDIRI','6032981055448302',1),(18523599,'BCA','0145000135366066',1),(18523600,'MANDIRI','6032986046764204',1),(18523601,'BRI','6013500147908348',1),(18523602,'BCA','0145007206253495',1),(18523603,'BCA','0145000129822819',1),(18523604,'MANDIRI','6032981056790967',1),(18523605,'BRI','6013500428825435',1),(18523606,'BCA','0145000115646537',1),(18523607,'BCA','0145000636092518',1),(18523608,'MANDIRI','6032986086054102',1),(18523609,'BCA','0145007206247604',1),(18523610,'BCA','0145000629565777',1),(18523611,'MANDIRI','6032981054844063',1),(18523612,'BCA','0145000646371779',1),(18523613,'BCA','0145000154950493',1),(18523614,'BNI','7546000006430884',1),(18523615,'BCA','0145000135440911',1),(18523616,'BRI','6013501802907401',1),(18523617,'BCA','0145200000443533',1),(18523618,'BCA','0145000128643356',1),(18523619,'BCA','0145000633470600',1),(18523620,'MANDIRI','6032984042393987',1),(18523621,'BRI','6013501804194586',1),(18523622,'MANDIRI','6032986099976572',1),(18523623,'BCA','0145000142721493',1),(18523624,'BCA','0145007400760808',1),(18523625,'MANDIRI','6032986095364765',1),(18523626,'BCA','0145000640092561',1),(18523627,'BCA','0145000626989723',1),(18523628,'BRI','6013502004491079',1),(18523629,'MANDIRI','6032984059527071',1),(18523630,'MANDIRI','6032986074733014',1),(18523631,'BCA','0145000154884130',1),(18523632,'BCA','0145000650443043',1),(18523633,'BCA','0145000138052721',1),(18523634,'BCA','0145000631098692',1),(18523635,'BCA','0145200001298423',1),(18523636,'MANDIRI','6032986071296601',1),(18523637,'MANDIRI','6032981055437099',1),(18523638,'BCA','0145200000297574',1),(18523639,'MANDIRI','6032986058163501',1),(18523640,'MANDIRI','6032981042750893',1),(18523641,'MANDIRI','6032986066745075',1),(18523642,'BCA','0145000118331707',1),(18523643,'BCA','0145000140657475',1),(18523644,'BCA','0145000146313008',1),(18523645,'BCA','0145000132390200',1),(18523646,'MANDIRI','6032981039184379',1),(18523647,'BCA','0145000139978098',1),(18523648,'BNI','7546030000646227',1),(18523649,'MANDIRI','6032984059075139',1),(18523650,'BCA','0145000155861525',1),(18523651,'MANDIRI','6032981029892643',1),(18523652,'BCA','0145000407578497',1),(18523653,'BCA','0145200008115018',1),(18523654,'BCA','0145000630774889',1),(18523655,'BCA','0145007200842970',1),(18523656,'BRI','6013500129699691',1),(18523657,'BCA','0145000637792884',1),(18523658,'MANDIRI','6032984082507660',1),(18523659,'BRI','6013501803013597',1),(18523660,'BCA','0145000152107179',1),(18523661,'BCA','0145200001298506',1),(18523662,'BCA','0145008200075389',1),(18523663,'MANDIRI','6032981056044563',1),(18523664,'BNI','7546030002699992',1),(18523665,'BCA','0145000154913806',1),(18523666,'BRI','6013501809703332',1),(18523667,'BCA','0145200001098849',1),(18523668,'MANDIRI','6032981056791775',1),(18523669,'BCA','0145000629662418',1),(18523670,'MANDIRI','6032981056055908',1),(18523671,'MANDIRI','6032981056071525',1),(18523672,'BCA','0145000134280599',1),(18523673,'BCA','0145000145739773',1),(18523674,'BCA','0145000138247776',1),(18523675,'MANDIRI','6032981056097116',1),(18523676,'MANDIRI','6032981056094659',1),(18523677,'BRI','6013500135994706',1),(18523678,'BCA','0145000150367767',1),(18523679,'BCA','0145000148925130',1),(18523680,'BRI','6013501813128765',1),(18523681,'MANDIRI','6032981048227540',1),(18523682,'MANDIRI','6032986047843288',1),(18523683,'MANDIRI','6032984069534596',1),(18523684,'MANDIRI','6032981054756275',1),(18523685,'MANDIRI','6032986074747337',1),(18523686,'BRI','6013500431264010',1),(18523687,'MANDIRI','6032986093727443',1),(18523688,'BCA','0145007206058837',1),(18523689,'BCA','0145000631073471',1),(18523690,'MANDIRI','6032984059527006',1);
/*!40000 ALTER TABLE `kartu_all_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategori`
--

DROP TABLE IF EXISTS `kategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategori` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kategori` varchar(50) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori`
--

LOCK TABLES `kategori` WRITE;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` VALUES (1,'Facility and recreation area','ft-image'),(2,'Hotel','ft-trending-up'),(3,'Mall','ft-video'),(4,'Hospital','ft-edit-2'),(5,'Residetial','ft-edit-2'),(6,'Airport','ft-edit-2');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategori_media`
--

DROP TABLE IF EXISTS `kategori_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategori_media` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kategori_media` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori_media`
--

LOCK TABLES `kategori_media` WRITE;
/*!40000 ALTER TABLE `kategori_media` DISABLE KEYS */;
INSERT INTO `kategori_media` VALUES (1,'CSR'),(2,'Non CSR');
/*!40000 ALTER TABLE `kategori_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategori_parent`
--

DROP TABLE IF EXISTS `kategori_parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategori_parent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori_parent`
--

LOCK TABLES `kategori_parent` WRITE;
/*!40000 ALTER TABLE `kategori_parent` DISABLE KEYS */;
INSERT INTO `kategori_parent` VALUES (1,'Komisaris'),(2,'Direksi');
/*!40000 ALTER TABLE `kategori_parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategori_posisi`
--

DROP TABLE IF EXISTS `kategori_posisi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategori_posisi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `posisi` varchar(50) DEFAULT NULL,
  `kategori_parent` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori_posisi`
--

LOCK TABLES `kategori_posisi` WRITE;
/*!40000 ALTER TABLE `kategori_posisi` DISABLE KEYS */;
INSERT INTO `kategori_posisi` VALUES (1,'Komisaris Utama',1),(2,'Komisaris',1),(3,'Direktur Utama',2),(4,'Direktur',2);
/*!40000 ALTER TABLE `kategori_posisi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live_cctv`
--

DROP TABLE IF EXISTS `live_cctv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `live_cctv` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `location` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_cctv`
--

LOCK TABLES `live_cctv` WRITE;
/*!40000 ALTER TABLE `live_cctv` DISABLE KEYS */;
INSERT INTO `live_cctv` VALUES (1,'KM 05+500','','https://www.google.co.id/maps/place/6%C2%B017\'09.0%22S+106%C2%B043\'50.9%22E/@-6.2858227,106.728609,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-6.285828!4d106.7307977',1),(2,'KM 06+000','','https://www.google.co.id/maps/place/6%C2%B017\'20.8%22S+106%C2%B043\'38.1%22E/@-6.2890921,106.7250644,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-6.2890974!4d106.7272531',1),(3,'KM 06+600','','https://www.google.co.id/maps/place/6%C2%B017\'25.9%22S+106%C2%B043\'23.3%22E/@-6.2905207,106.7209402,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-6.290526!4d106.7231289',1),(4,'KM 07+200','','https://www.google.co.id/maps/place/6%C2%B017\'37.6%22S+106%C2%B043\'07.7%22E/@-6.2937841,106.7166079,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-6.2937894!4d106.7187966',1),(5,'KM 07+600','','https://www.google.co.id/maps/place/6%C2%B017\'39.7%22S+106%C2%B042\'54.2%22E/@-6.2943431,106.7128778,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-6.2943484!4d106.7150665',1),(6,'KM 08+075','','https://www.google.co.id/maps/place/6%C2%B017\'45.1%22S+106%C2%B042\'38.9%22E/@-6.2958441,106.7086198,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-6.2958494!4d106.7108085',1),(7,'KM 08+200','','https://www.google.co.id/maps/place/6%C2%B017\'49.2%22S+106%C2%B042\'32.3%22E/@-6.2970058,106.7067864,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-6.2970111!4d106.7089751',1),(8,'KM 08+700','','https://www.google.co.id/maps/place/6%C2%B017\'56.3%22S+106%C2%B042\'24.4%22E/@-6.2989535,106.7045769,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-6.2989588!4d106.7067656',1),(9,'KM 09+200','','https://www.google.co.id/maps/place/6%C2%B018\'05.9%22S+106%C2%B042\'11.5%22E/@-6.3016199,106.7010151,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-6.3016252!4d106.7032038',1),(10,'KM 09+700','','https://www.google.co.id/maps/place/6%C2%B018\'14.1%22S+106%C2%B041\'57.3%22E/@-6.303914,106.6970589,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-6.3039193!4d106.6992476',1),(11,'KM 10+000','','https://www.google.co.id/maps/place/6%C2%B018\'19.9%22S+106%C2%B041\'45.7%22E/@-6.3055108,106.6938337,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-6.3055161!4d106.6960224',1),(12,'KM 10+500','','https://www.google.co.id/maps/place/6%C2%B018\'24.0%22S+106%C2%B041\'35.1%22E/@-6.3066735,106.6908911,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-6.3066788!4d106.6930798',1),(13,'KM 11+000','','https://www.google.co.id/maps/place/6%C2%B018\'31.6%22S+106%C2%B041\'15.9%22E/@-6.3087841,106.6855675,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-6.3087894!4d106.6877562',1),(14,'KM 11+500','','https://www.google.co.id/maps/place/6%C2%B018\'36.6%22S+106%C2%B041\'01.8%22E/@-6.310162,106.6816399,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-6.3101673!4d106.6838286',1),(15,'KM 12+000','','https://www.google.co.id/maps/place/6%C2%B018\'42.1%22S+106%C2%B040\'47.1%22E/@-6.311691,106.6775596,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-6.3116963!4d106.6797483',1),(16,'On Ramp 30C 1','','https://www.google.co.id/maps/place/6%C2%B018\'32.3%22S+106%C2%B041\'11.7%22E/@-6.3089702,106.6844023,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-6.3089755!4d106.686591',1),(17,'On Ramp 30C 2','','https://www.google.co.id/maps/place/6%C2%B018\'31.2%22S+106%C2%B041\'14.8%22E/@-6.3086492,106.6852515,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-6.3086545!4d106.6874402',1),(18,'On Ramp 40A 1','','https://www.google.co.id/maps/place/6%C2%B018\'41.1%22S+106%C2%B040\'25.9%22E/@-6.3114193,106.6716846,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-6.3114246!4d106.6738733',1),(19,'On Ramp 40A 2','','https://www.google.co.id/maps/place/6%C2%B018\'44.7%22S+106%C2%B040\'29.9%22E/@-6.3124069,106.6727949,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-6.3124122!4d106.6749836',1),(20,'ROW 40C','','https://www.google.co.id/maps/place/6%C2%B018\'47.6%22S+106%C2%B040\'30.3%22E/@-6.3132154,106.6729039,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-6.3132207!4d106.6750926',1),(21,'Gerbang Pondok Aren Barat 1','','https://www.google.co.id/maps/place/6%C2%B017\'21.3%22S+106%C2%B043\'34.0%22E/@-6.289236,106.7239281,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-6.2892413!4d106.7261168',1),(22,'Gerbang Pondok Aren Barat 2','','https://www.google.co.id/maps/place/6%C2%B017\'23.2%22S+106%C2%B043\'35.9%22E/@-6.2897813,106.7244605,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-6.2897866!4d106.7266492',1);
/*!40000 ALTER TABLE `live_cctv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text,
  `konten` text,
  `image` varchar(255) DEFAULT NULL,
  `active` varchar(1) DEFAULT '1',
  `add_to_home` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `kategori_media` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (2,'Rapat Koordinasi  Ditlantas Polda Sulsel bersama Managemen PT MMN-PT JTSE','Makassar, 10 Januari 2021, Dirtektorat Lalu lintas Polda Sulsel bersama BUJT Makassar melaksanakan rapat koordinasi dalam rangka pengamanan jalan tol, salah satu yang menjadi pembahasan adalah rombongan pengantar jenasah yang menggunakan kendaraan Roda dua melalui akses jalan tol.\r\nDalam rapat koordinasi tersebut dipimpin oleh langsung oleh DIrektur Lalu Lintas Polda Sulsel Komisaris Besar Polisi Faizal Sik. MH, dihadiri oleh jajaran DIreksi PPT Makassar Metro Network - PT Jalan Tol Seksi Empat  Anwar Toha Direktur Utama PT Makassar Metro Network, Real Chandra Direktur Komersil PT Makassar Metro Network - PT Jalan Tol Seksi Empat beserta staf dan juga para PJU Ditlantas Polda Sulsel.','uploads/6/2022-01/20220110_105454.jpg','1',1,'2022-01-12 15:03:50','2022-01-12 15:05:52',2),(4,'Quality Control Circle (QCC) Competition and Direct Improvement Session 2021','Makassar, 10 Januari 2022 ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“ PT. Makassar Metro Network (MMN) dan PT. Jalan Tol Seksi Empat (JTSE) yang merupakan anak usaha dari PT. Margautama Nusantara (MUN) telah menggelar Quality Control Circle (QCC) Competition and Direct Improvement Session 2021 pada 10 Januari 2022 secara hybrid, yaitu daring melalui Aplikasi Zoom Meeting dan luring di Ruang Rapat Margautama Nusantara. QCC Competition and Direct Improvement merupakan kegiatan rutin tiap tahun yang dihadirkan oleh perusahaan. \r\nQuality Control Circle (QCC) Competition and Direct Improvement Session 2021 mengusung tema ÃƒÂ¢Ã¢â€šÂ¬Ã…â€œStrenghtening Bussiness Resilience With Excellence CultureÃƒÂ¢Ã¢â€šÂ¬Ã‚Â dalam artian penguatan ketahanan perusahaan dengan budaya improvement. Anwar Toha, Direktur utama PT. Makassar Metro Network (MMN) menyampaikan, ÃƒÂ¢Ã¢â€šÂ¬Ã…â€œTujuan dari kegiatan ini ialah agar pegawai tidak berhenti melakukan inovasi-inovasi demi kelanjutan tol kita, bukan perihal mendapatkan hadiah akan tetapi bagaimana QCC menjadi budaya untuk kita semuaÃƒÂ¢Ã¢â€šÂ¬Ã‚Â.\r\nMuhammad Yusuf Syuhaidar selaku Penanggung Jawab Quality, Health, Safety and Environment system (QHSE) melaporkan achievement QCC and Direct Improvement 2021. Dalam laporannya Yusuf menyampaikan bahwa setidaknya ada 72 direct improvement & 8 project innovation yang telah berhasil dicapai, serta dari tahun 2015 hingga sekarang mengalami kenaikan dengan rata-rata 35% terkait rewarding improvement.\r\nKegiatan ini diikuti oleh 8 Project Leader dengan masing-masing team yang memiliki Project Inovasi. Setiap perwakilan team diberikan kesempatan untuk memaparkan Project Inovasi yang mereka kembangkan sekaligus akan dilakukan penilaian terhadap masing-masing team.  \r\nTerdapat dua kategori pemenang dalam kegiatan ini, yakni, kategori pertama, Quality Control Circle Competition Session 2021 dimenangkan oleh team ÃƒÂ¢Ã¢â€šÂ¬Ã…â€œOTONKÃƒÂ¢Ã¢â€šÂ¬Ã‚Â dengan mendapatkan plakat, sertifikat serta uang tunai. Pada kategori kedua, yakni, Direct Improvement Session 2021 dimenangkan oleh team ÃƒÂ¢Ã¢â€šÂ¬Ã…â€œPenyapuan Jalan Menggunakan Mobil Power BroomÃƒÂ¢Ã¢â€šÂ¬Ã‚Â dengan mendapatkan plakat, sertifikat serta uang tunai.\r\nÃƒÂ¢Ã¢â€šÂ¬Ã…â€œSaya Berharap bahwa kedepannya kita mampu bersaing, dikarenakan persaingan di luar yang semakin besar baik di tingkat nasional maupun internasionalÃƒÂ¢Ã¢â€šÂ¬Ã‚Â tutur Anwar Toha.','uploads/6/2022-01/20220110_1809121.jpg','1',1,'2022-01-12 15:13:55','2022-01-12 15:15:53',2),(5,'Cofee Morning Management bersama Pejabat Utama DItlantas Polda Sulsel','Makassar, 12 Januari 2022, Jajaran pimpinan PT MMN-PT JTSE melaksanakan kegiatan cofee morning bersama dengan jajaran Pejabat Utama Direktorat Lalu Lintas Polda sulsel, dalam kesempatan ini hadir Direktur Utama PT MMN, Ismail Malliungan Dirut PT JTSE, Real Chandra Dircom PT MMN-PT JTSE dan staf, sedangkan dari Direktorat Lalu Lintas hadir Kabag Ops, Kasat PJR, Dikyasa dan Ka Induk 2 PJR Tol.','uploads/6/2022-01/test.jpg','1',1,'2022-01-12 15:37:00','2022-01-12 08:37:00',2),(9,'LARANGAN RODA DUA MASUK JALAN TOL','PT Makassar Metro Network - PT Jalan Tol Seksi Empat, saat ini melakukan kampanye Keselamatan Lalu lintas, tentang larangan kendaraan roda dua masuk ke jalan tol, termasuk iring iringan pengantar jenasah menggunakan kendaraan roda dua.','uploads/6/2022-01/flayer_sosialisasixxxxxxx.jpg','1',1,'2022-01-17 11:43:26','2022-01-17 11:47:21',2);
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `menu` varchar(50) DEFAULT NULL,
  `icon` int DEFAULT NULL,
  `route` varchar(50) DEFAULT NULL,
  `add_to_home` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Home',21,'home',2,'2021-08-05 17:07:42','2021-08-05 17:35:58'),(2,'Sejarah Perusahaan',NULL,'sejarah',2,'2021-08-05 17:08:31','2021-08-05 17:31:23'),(3,'Profile Perusahaan',NULL,'profile',2,'2021-08-05 17:08:43','2021-08-05 17:31:25'),(4,'Visi & Misi dan Nilai Perusahaan',NULL,'visi-misi',2,'2021-08-05 17:09:19','2021-08-05 17:31:26'),(5,'Dewan Komisaris & Direksi',NULL,'dewan',2,'2021-08-05 17:10:25','2021-08-05 17:31:27'),(6,'Struktur Organisasi & Organizational Achievement',NULL,'struktur',2,'2021-08-05 17:10:28','2021-08-05 17:31:28'),(7,'Corporate Social Responsibility',NULL,'csr',2,'2021-08-05 17:10:31','2021-08-05 17:31:28'),(8,'Rest Area',18,'rest-area',2,'2021-08-05 17:28:35','2021-08-19 04:31:00'),(9,'Cetak Struk',220,'struk',1,'2021-08-05 17:28:48','2021-10-06 06:55:10'),(10,'Live CCTV',59,'cctv',1,'2021-08-05 17:28:50','2021-08-19 05:01:13'),(11,'Info Tarif',190,'tarif',2,'2021-08-05 17:29:01','2021-08-19 04:54:14'),(12,'Call Center',640,'call-center',2,'2021-08-05 17:29:13','2021-08-19 04:31:09');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_08_07_145904_add_table_cms_apicustom',1),(4,'2016_08_07_150834_add_table_cms_dashboard',1),(5,'2016_08_07_151210_add_table_cms_logs',1),(6,'2016_08_07_151211_add_details_cms_logs',1),(7,'2016_08_07_152014_add_table_cms_privileges',1),(8,'2016_08_07_152214_add_table_cms_privileges_roles',1),(9,'2016_08_07_152320_add_table_cms_settings',1),(10,'2016_08_07_152421_add_table_cms_users',1),(11,'2016_08_07_154624_add_table_cms_menus_privileges',1),(12,'2016_08_07_154624_add_table_cms_moduls',1),(13,'2016_08_17_225409_add_status_cms_users',1),(14,'2016_08_20_125418_add_table_cms_notifications',1),(15,'2016_09_04_033706_add_table_cms_email_queues',1),(16,'2016_09_16_035347_add_group_setting',1),(17,'2016_09_16_045425_add_label_setting',1),(18,'2016_09_17_104728_create_nullable_cms_apicustom',1),(19,'2016_10_01_141740_add_method_type_apicustom',1),(20,'2016_10_01_141846_add_parameters_apicustom',1),(21,'2016_10_01_141934_add_responses_apicustom',1),(22,'2016_10_01_144826_add_table_apikey',1),(23,'2016_11_14_141657_create_cms_menus',1),(24,'2016_11_15_132350_create_cms_email_templates',1),(25,'2016_11_15_190410_create_cms_statistics',1),(26,'2016_11_17_102740_create_cms_statistic_components',1),(27,'2017_06_06_164501_add_deleted_at_cms_moduls',1),(28,'2019_08_19_000000_create_failed_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nilai_bsd`
--

DROP TABLE IF EXISTS `nilai_bsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nilai_bsd` (
  `id` int NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `deskripsi` text,
  `active` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nilai_bsd`
--

LOCK TABLES `nilai_bsd` WRITE;
/*!40000 ALTER TABLE `nilai_bsd` DISABLE KEYS */;
INSERT INTO `nilai_bsd` VALUES (1,'uploads/1/2021-10/icon_growing.png','Growth','Menjadi besar dan semakin cepat seiring berjalan waktu',1,'2021-08-05 12:36:44','2021-10-07 12:33:50'),(2,'uploads/1/2021-10/icon_reliable.png','Reliable','Mewujudkan komitmen dengan standar yang tinggi',1,'2021-08-05 12:37:06','2021-10-07 12:33:34'),(3,'uploads/1/2021-10/icon_optimistic.png','Optimistic','Memiliki impian dan percaya diri dalam menyongsong masa depan',1,'2021-08-05 12:37:24','2021-10-07 12:32:59'),(4,'uploads/1/2021-10/icon_willing.png','Willing','Selalu siap dan bersemangat untuk bekerja lebih',1,'2021-08-05 12:37:43','2021-10-07 12:32:46'),(5,'uploads/1/2021-10/icon_teamup.png','Team Up','Satu Tim, Satu Rencana, Satu Tujuan',1,'2021-08-05 12:38:06','2021-10-07 12:32:33'),(6,'uploads/1/2021-10/icon_harmonious.png','Harmonious','Selalu bersama dalam keharmonisan',1,'2021-08-05 12:38:26','2021-10-07 12:32:18');
/*!40000 ALTER TABLE `nilai_bsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `print_invoice`
--

DROP TABLE IF EXISTS `print_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `print_invoice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gerbang` varchar(10) NOT NULL,
  `gardu` varchar(10) NOT NULL,
  `no_kartu` int NOT NULL,
  `tanggal_transaksi` datetime(6) NOT NULL,
  `golongan` int NOT NULL,
  `tarif` int NOT NULL,
  `sisa_saldo` int NOT NULL,
  `call_center` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `print_invoice`
--

LOCK TABLES `print_invoice` WRITE;
/*!40000 ALTER TABLE `print_invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `print_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_bsd`
--

DROP TABLE IF EXISTS `profile_bsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile_bsd` (
  `id` int NOT NULL AUTO_INCREMENT,
  `judul` varchar(150) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `konten` longtext,
  `bidang_usaha` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `struktur` varchar(255) DEFAULT NULL,
  `sejarah` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_bsd`
--

LOCK TABLES `profile_bsd` WRITE;
/*!40000 ALTER TABLE `profile_bsd` DISABLE KEYS */;
INSERT INTO `profile_bsd` VALUES (1,'PT MAKASSAR METRO NETWORK','uploads/6/2022-01/logo_logo_mmn_jtse.jpg','PT Makassar Metro Network (Perusahaan) (dahulu PT Bosowa Marga Nusantara atau BMN) didirikan berdasarkan Akta Notaris Mestariany Habie, S.H., No. 20 tanggal 12 April 1993 dan Perjanjian Usaha Patungan dengan PT Jasa Marga (Persero) Tbk No. 19 tanggal 12 April 1993 dari Notaris yang sama. \r\n\r\nSejak tahun 1998 PT Makassar Metro Network mengoperasikan Jalan Tol Seksi 1 dan 2 sepanjang 6,6 km dan Jalan Tol Ujung Pandang Seksi 3 sepanjang 4,3 km sebagai investasi tambahan dangan  kompensasi perpanjangan masa konsesi dan perubahan tarif.','Pengelola Jalan Tol Ruas Ujung Pandang seksi 1, 2 dan 3','2021-08-05 18:53:31','2022-01-27 08:50:28','uploads/6/2022-01/logo_logo_mmn_jtse.jpg','<p>PT Makassar Metro Network (Perusahaan) (dahulu PT Bosowa Marga Nusantara atau BMN) didirikan berdasarkan Akta Notaris Mestariany Habie, S.H., No. 20 tanggal 12 April 1993 dan Perjanjian Usaha Patungan dengan PT Jasa Marga (Persero) Tbk No. 19 tanggal 12 April 1993 dari Notaris yang sama.&nbsp; Akta Pendirian Perusahaan telah mendapat&nbsp; pengesahan dari menteri kehakiman republik indonedia dalam surat keputusan No. C2-12555.HT.01.01.Th.93 tanggal 27 November 1993, dan telah diumumkan dalam berita negara republik indonesia No. 8 tanggal 27 Januari 1995 tambahan No.750 serta telah terdaftar dalam surat persetujuan penenaman modal dalam negara No. 239/IPMDN/1993 tanggal 5 Agustus 1993 yang dikeluarkan oleh badan koordinasi penanaman modal.</p><p>Pada 2 November 2020, telah dilakukan perubahan nama perusahaan menjadi PT. Makassar Metro Network berdasarkan Akta Notaris Karin Cristina Basoeki, S.H., No. 02 tanggal 2 November 2020, yang telah disetujui oleh menteri hukum dan hak asasi manusia republik indonesia dalam surat keputusan No. AHU-0185421. AH 01.11. tanggal 5 November 2020.</p><p>Anggaran Dasar Perusahaan telah mengalami beberapa kali perubahan, terakhir dengan Akta Citra Buana Tungga, S.H., M.Kn., No. 8 tanggal 12 Desember 2019 mengenai peningkatan modal dasar, ditempatkan dan disetor perusahaan. Perubahan tersebut telah mendapat persetujuan dari menteri hukum dan hak asasi manusia republik indonesia berdasarkan surat keputusan no. AHU-0106448. AH. 01.01 tanggal 8 Desember 2019.</p><p>Berdasarkan pasal 3 anggaran dasar perusahaanb, maksud dan tujuan Perusahaan adalah berusaha dalam bidang pembangunan, pengoperasian dan pemeliharaan jalan tol.</p><p>Sejak tahun 1998 PT Makassar Metro Network mengoperasikan jalan tol seksi 1 dan 2 sepanjang 6,6 km dan saat ini sedang membvangun Jalan Tol Ujung Pandang Seksi 3 sepanjang 4,3 km sebagai investasi tambagan dengan kompetensi perpajangan masa konsensasi dan perubahan tarif.</p><p>perubahan berkedudukan di Jalan Jenderal Sudirman No. 5, Menara Bosowa lantai 4, Makassar, Sulawesi Selatan.</p>');
/*!40000 ALTER TABLE `profile_bsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `link` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rest_area`
--

DROP TABLE IF EXISTS `rest_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rest_area` (
  `id` int NOT NULL AUTO_INCREMENT,
  `foto` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rest_area`
--

LOCK TABLES `rest_area` WRITE;
/*!40000 ALTER TABLE `rest_area` DISABLE KEYS */;
INSERT INTO `rest_area` VALUES (1,'uploads/1/2021-09/restarea.jpg','Jl. Rest Area KM VII, Jombang, Kec. Ciputat, Kota Tangerang Selatan, Banten 15414','Rest Area');
/*!40000 ALTER TABLE `rest_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rest_area_child`
--

DROP TABLE IF EXISTS `rest_area_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rest_area_child` (
  `id` int NOT NULL,
  `rest_area` int DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `nama_inggris` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rest_area_child`
--

LOCK TABLES `rest_area_child` WRITE;
/*!40000 ALTER TABLE `rest_area_child` DISABLE KEYS */;
INSERT INTO `rest_area_child` VALUES (1,1,'Minimarket','uploads/4/2021-08/cart.png','Convinience Store'),(2,1,'Kafe & Restoran','uploads/4/2021-08/restoran.png','Cafe & Restaurant'),(3,1,'Pom Bensin','uploads/4/2021-08/spbu.png','Gas Station'),(4,1,'Galeri ATM','uploads/4/2021-08/atm.png','ATM Gallery'),(5,1,'WC Umum','uploads/4/2021-08/restroom.png','Toilet'),(6,1,'Masjid','uploads/4/2021-08/masjid.png','Mosque');
/*!40000 ALTER TABLE `rest_area_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sejarah_perusahaan`
--

DROP TABLE IF EXISTS `sejarah_perusahaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sejarah_perusahaan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `judul_indo` text,
  `judul_eng` text,
  `active` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sejarah_perusahaan`
--

LOCK TABLES `sejarah_perusahaan` WRITE;
/*!40000 ALTER TABLE `sejarah_perusahaan` DISABLE KEYS */;
INSERT INTO `sejarah_perusahaan` VALUES (1,'1981-01-01','Tahun 1981\r\nPengoperasian Jembatan Tallo Lama Oleh PT Jasa Marga (persero)','Operation of the Old Tallo Bridge by PT Jasa Marga (Persero)',1,'2022-01-17 16:01:18','2022-01-17 16:04:28'),(2,'1993-02-02','Tahun 1993 \r\nPT Jasa Marga (Persero) dan Bosowa Group membentuk usaha patungan untuk membangun Jalan Tol Seksi I & II','PT Jasa Marga (Persero) and Bosowa Group formed a joint venture to build Toll Road Sections I & II',1,'2022-01-17 16:07:13',NULL),(3,'1995-06-06','Tahun 1995\r\nKonstruksi Pembangunan Jalan Tol Seksi I & II','Construction of Section I & II Toll Road Construction',1,'2022-01-17 16:10:06','2022-01-17 16:11:01'),(4,'1998-11-10','Tahun 1998\r\nPengoperasian Jalan Tol Seksi I & II oleh PT. Bosowa Marga Nusantara','1998\r\nSection I & II Toll Road Operation by PT. Bosowa Marga Nusantara',1,'2022-01-17 16:13:05',NULL),(5,'2005-11-23','Tahun 2005\r\nKonstruksi Pembangunan Jalan Tol Seksi IV','2005\r\nSection IV . Toll Road Construction Construction',1,'2022-01-17 16:15:02',NULL),(6,'2008-05-05','Tahun 2008\r\nPengoperasian Jalan Tol Seksi IV oleh PT Jalan Tol Seksi Empat','2008\r\nOperation of Section IV Toll Road by PT Jalan Tol Section Empat',1,'2022-01-17 16:16:44',NULL),(7,'2015-10-21','Tahun 2015\r\nPelaksanaan Konstruksi Jembatan Tallo II dan Frontage Jalan Ir. Sutami','2015\r\nImplementation of Tallo II Bridge Construction and Road Frontage Ir. Sutami',1,'2022-01-17 16:17:51',NULL),(8,'2018-03-12','Tahun 2018\r\nKonstruksi Jalan Tol Layang AP Pettarani (Seksi III)','2018\r\nAP Pettarani Elevated Toll Road Construction (Section III)',1,'2022-01-17 16:18:44',NULL),(9,'2021-10-17','Tahun 2021\r\nPengoperasian Tol Layang AP Pettarani oleh PT. Makassar Metro Network','The operation of the AP Pettarani Elevated Toll Road by PT. Makassar Metro Network',1,'2022-01-17 16:19:40',NULL);
/*!40000 ALTER TABLE `sejarah_perusahaan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sertifikat_bsd`
--

DROP TABLE IF EXISTS `sertifikat_bsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sertifikat_bsd` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `active` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sertifikat_bsd`
--

LOCK TABLES `sertifikat_bsd` WRITE;
/*!40000 ALTER TABLE `sertifikat_bsd` DISABLE KEYS */;
INSERT INTO `sertifikat_bsd` VALUES (2,'uploads/1/2021-10/opexcon3.jpg','opexcon',1,'2021-08-05 13:09:48','2021-10-07 12:42:11'),(4,'uploads/1/2021-10/sgs.png','sgs',1,'2021-10-07 12:44:20','2021-10-07 12:42:39');
/*!40000 ALTER TABLE `sertifikat_bsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_location`
--

DROP TABLE IF EXISTS `service_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_location` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `maps` varchar(255) DEFAULT NULL,
  `description` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `kategori` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_location`
--

LOCK TABLES `service_location` WRITE;
/*!40000 ALTER TABLE `service_location` DISABLE KEYS */;
INSERT INTO `service_location` VALUES (4,'Trans Studio Mall Makassar','uploads/4/2021-12/tsm.jpg','Makassar','https://goo.gl/maps/aw8Hf21Bjg84nsLE9','Mal perbelanjaan dengan toko pakaian, supermarket, restoran & bioskop.','2021-07-31 01:01:23',1,3),(5,'Bandar Udara International Sultan Hasanuddin','uploads/4/2021-12/bandara.jpg','Makassar','https://goo.gl/maps/WrbTeGt3n4aViVPS7','Bandar Udara International Sultan Hasanuddin adalah Airport','2021-07-31 01:07:31',1,6),(8,'Lapangan Karebosi','uploads/4/2021-12/karebosi.jpg','Makassar','https://goo.gl/maps/CMZTHFCDfXd7jwUg6','Lapangan Karebosi adalah salah satu lapangan olah raga yang luas dan ruang publik masyarakat yang terdapat di jantung Kota Makassar.','2021-07-31 01:10:46',1,1),(9,'Pantai Losari','uploads/4/2021-12/losari.jpg','Makassar','https://goo.gl/maps/bqXCzYSXSaHVsWAT9','Pantai Losari adalah sebuah pantai','2021-07-31 01:11:37',1,1);
/*!40000 ALTER TABLE `service_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `struktur_bsd`
--

DROP TABLE IF EXISTS `struktur_bsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `struktur_bsd` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `struktur_bsd`
--

LOCK TABLES `struktur_bsd` WRITE;
/*!40000 ALTER TABLE `struktur_bsd` DISABLE KEYS */;
INSERT INTO `struktur_bsd` VALUES (1,'uploads/7/2022-01/logo_mmn.jpg','2021-08-05 20:04:28','2022-01-27 11:17:25');
/*!40000 ALTER TABLE `struktur_bsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenants`
--

DROP TABLE IF EXISTS `tenants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenants` (
  `id` int NOT NULL,
  `billboard_id` int NOT NULL,
  `company` varchar(50) NOT NULL,
  `phone` int NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenants`
--

LOCK TABLES `tenants` WRITE;
/*!40000 ALTER TABLE `tenants` DISABLE KEYS */;
INSERT INTO `tenants` VALUES (1,1,'PT Testing',908987583,'admin@bsdtoll.com','Jalan Kenangan','2021-04-30 02:32:11',NULL);
/*!40000 ALTER TABLE `tenants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tender`
--

DROP TABLE IF EXISTS `tender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tender` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_proyek` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tender`
--

LOCK TABLES `tender` WRITE;
/*!40000 ALTER TABLE `tender` DISABLE KEYS */;
INSERT INTO `tender` VALUES (1,'Pengadaan CCTV dan VMS','2021-10-06 10:10:39','2021-10-06 10:08:58'),(2,'Proyek re-alignment','2021-10-06 10:10:57','2021-10-06 10:09:15'),(3,'Pembangunan kantor operasional','2021-10-06 10:11:12','2021-10-06 10:09:31');
/*!40000 ALTER TABLE `tender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_kartu`
--

DROP TABLE IF EXISTS `test_kartu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_kartu` (
  `id` int NOT NULL,
  `plaza` varchar(3) NOT NULL,
  `gardu` varchar(2) NOT NULL,
  `periode` int NOT NULL,
  `shift` int NOT NULL,
  `tanggal` date NOT NULL,
  `transaksi` datetime NOT NULL,
  `resi` varchar(10) NOT NULL DEFAULT '',
  `metode` varchar(10) NOT NULL DEFAULT '',
  `gol` int NOT NULL,
  `payment` int NOT NULL,
  `saldo` int NOT NULL,
  `kartu` varchar(20) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_kartu`
--

LOCK TABLES `test_kartu` WRITE;
/*!40000 ALTER TABLE `test_kartu` DISABLE KEYS */;
INSERT INTO `test_kartu` VALUES (18523501,'101','01',2,2,'2019-09-12','2019-09-12 15:52:02','0479C0','MANDIRI',1,3500,88875,'6032984000844112','2021-12-17 19:25:10'),(18523502,'101','01',2,2,'2019-09-12','2019-09-12 15:52:10','0479C1','MANDIRI',1,3500,59500,'6032984069862096','2021-12-17 19:25:10'),(18523503,'101','01',2,2,'2019-09-12','2019-09-12 15:52:19','0479C2','BCA',1,3500,52075,'0145000137467078','2021-12-17 19:25:10'),(18523504,'101','01',2,2,'2019-09-12','2019-09-12 15:52:30','0479C3','MANDIRI',1,3500,74100,'6032981044806164','2021-12-17 19:25:10'),(18523505,'101','01',2,2,'2019-09-12','2019-09-12 15:52:42','0479C4','MANDIRI',1,3500,27050,'6032981038211819','2021-12-17 19:25:10'),(18523506,'101','01',2,2,'2019-09-12','2019-09-12 15:52:55','0479C5','BRI',1,3500,22500,'6013501806355367','2021-12-17 19:25:10'),(18523507,'101','01',2,2,'2019-09-12','2019-09-12 15:53:07','0479C6','MANDIRI',1,3500,23750,'6032981050844752','2021-12-17 19:25:10'),(18523508,'101','01',2,2,'2019-09-12','2019-09-12 15:53:26','0479C7','MANDIRI',1,3500,80825,'6032981045525474','2021-12-17 19:25:10'),(18523509,'101','01',2,2,'2019-09-12','2019-09-12 15:53:59','0479C8','BCA',1,3500,55400,'0145000631020563','2021-12-17 19:25:10'),(18523510,'101','01',2,2,'2019-09-12','2019-09-12 15:54:17','0479C9','BRI',1,3500,33550,'6013500147880208','2021-12-17 19:25:10'),(18523511,'101','01',2,2,'2019-09-12','2019-09-12 15:54:26','0479CA','BCA',1,3500,48975,'0145000133880738','2021-12-17 19:25:10'),(18523512,'101','01',2,2,'2019-09-12','2019-09-12 15:54:42','0479CB','BNI',1,3500,82900,'7546130007627467','2021-12-17 19:25:10'),(18523513,'101','01',2,2,'2019-09-12','2019-09-12 15:55:00','0479CC','BCA',1,3500,3300,'0145007205407035','2021-12-17 19:25:10'),(18523514,'101','01',2,2,'2019-09-12','2019-09-12 15:55:12','0479CD','MANDIRI',1,3500,228875,'6032981055321574','2021-12-17 19:25:10'),(18523515,'101','01',2,2,'2019-09-12','2019-09-12 15:55:32','0479CE','BCA',1,3500,19300,'0145000141087441','2021-12-17 19:25:10'),(18523516,'101','01',2,2,'2019-09-12','2019-09-12 15:55:47','0479CF','BCA',1,3500,87350,'0145002800050181','2021-12-17 19:25:10'),(18523517,'101','01',2,2,'2019-09-12','2019-09-12 15:57:26','0479D0','BCA',1,3500,196500,'0145008200403649','2021-12-17 19:25:10'),(18523518,'101','01',2,2,'2019-09-12','2019-09-12 15:57:47','0479D1','BCA',1,3500,34625,'0145000119288666','2021-12-17 19:25:10'),(18523519,'101','01',2,2,'2019-09-12','2019-09-12 15:57:56','0479D2','BRI',1,3500,40000,'6013500612679820','2021-12-17 19:25:10'),(18523520,'101','01',2,2,'2019-09-12','2019-09-12 15:58:08','0479D3','MANDIRI',1,3500,45900,'6032984037383290','2021-12-17 19:25:10'),(18523521,'101','01',2,2,'2019-09-12','2019-09-12 15:58:19','0479D4','BCA',1,3500,127000,'0145000152227225','2021-12-17 19:25:10'),(18523522,'101','01',2,2,'2019-09-12','2019-09-12 15:58:28','0479D5','BCA',1,3500,85500,'0145000134512470','2021-12-17 19:25:10'),(18523523,'101','01',2,2,'2019-09-12','2019-09-12 15:58:56','0479D6','BCA',1,3500,23000,'0145000151492507','2021-12-17 19:25:10'),(18523524,'101','01',2,2,'2019-09-12','2019-09-12 15:59:08','0479D7','BRI',1,3500,50000,'6013501810202373','2021-12-17 19:25:10'),(18523525,'101','01',2,2,'2019-09-12','2019-09-12 15:59:17','0479D8','MANDIRI',1,3500,158575,'6032986066761411','2021-12-17 19:25:10'),(18523526,'101','01',2,2,'2019-09-12','2019-09-12 15:59:29','0479D9','BCA',1,3500,72294,'0145002500533064','2021-12-17 19:25:10'),(18523527,'101','01',2,2,'2019-09-12','2019-09-12 15:59:36','0479DA','BCA',1,3500,24075,'0145000118332622','2021-12-17 19:25:10'),(18523528,'101','01',2,2,'2019-09-12','2019-09-12 15:59:50','0479DB','MANDIRI',1,3500,136175,'6032986066740746','2021-12-17 19:25:10'),(18523529,'101','01',2,2,'2019-09-12','2019-09-12 16:00:01','0479DC','MANDIRI',1,3500,20200,'6032986074735571','2021-12-17 19:25:10'),(18523530,'101','01',2,2,'2019-09-12','2019-09-12 16:00:15','0479DD','MANDIRI',1,3500,211250,'6032986057211228','2021-12-17 19:25:10'),(18523531,'101','01',2,2,'2019-09-12','2019-09-12 16:00:42','0479DE','BCA',1,3500,100000,'0145000137508855','2021-12-17 19:25:10'),(18523532,'101','01',2,2,'2019-09-12','2019-09-12 16:00:52','0479DF','BCA',1,3500,330900,'0145000641551409','2021-12-17 19:25:10'),(18523533,'101','01',2,2,'2019-09-12','2019-09-12 16:01:05','0479E0','MANDIRI',1,3500,32000,'6032981054383682','2021-12-17 19:25:10'),(18523534,'101','01',2,2,'2019-09-12','2019-09-12 16:01:15','0479E1','BCA',1,3500,47375,'0145000118945928','2021-12-17 19:25:10'),(18523535,'101','01',2,2,'2019-09-12','2019-09-12 16:01:25','0479E2','BCA',1,3500,47000,'0145007205425144','2021-12-17 19:25:10'),(18523536,'101','01',2,2,'2019-09-12','2019-09-12 16:01:34','0479E3','BCA',1,3500,97000,'0145000135167456','2021-12-17 19:25:10'),(18523537,'101','01',2,2,'2019-09-12','2019-09-12 16:01:47','0479E4','MANDIRI',1,3500,34000,'6032986066735688','2021-12-17 19:25:10'),(18523538,'101','01',2,2,'2019-09-12','2019-09-12 16:01:58','0479E5','BCA',1,3500,50325,'0145000136094931','2021-12-17 19:25:10'),(18523539,'101','01',2,2,'2019-09-12','2019-09-12 16:02:10','0479E6','MANDIRI',1,3500,105375,'6032981046802484','2021-12-17 19:25:10'),(18523540,'101','01',2,2,'2019-09-12','2019-09-12 16:02:21','0479E7','BCA',1,3500,80000,'0145000138709551','2021-12-17 19:25:10'),(18523541,'101','01',2,2,'2019-09-12','2019-09-12 16:02:29','0479E8','BRI',1,3500,34499,'6013502105343609','2021-12-17 19:25:10'),(18523542,'101','01',2,2,'2019-09-12','2019-09-12 16:02:41','0479E9','BNI',1,3500,96025,'7546000004989808','2021-12-17 19:25:10'),(18523543,'101','01',2,2,'2019-09-12','2019-09-12 16:03:05','0479EA','BRI',1,3500,114525,'6013502004477391','2021-12-17 19:25:10'),(18523544,'101','01',2,2,'2019-09-12','2019-09-12 16:03:16','0479EB','MANDIRI',1,3500,83350,'6032986037644712','2021-12-17 19:25:10'),(18523545,'101','01',2,2,'2019-09-12','2019-09-12 16:03:25','0479EC','BCA',1,3500,40500,'0145000149488906','2021-12-17 19:25:10'),(18523546,'101','01',2,2,'2019-09-12','2019-09-12 16:03:40','0479ED','MANDIRI',1,3500,13275,'6032986063762354','2021-12-17 19:25:10'),(18523547,'101','01',2,2,'2019-09-12','2019-09-12 16:03:49','0479EE','BCA',1,3500,14250,'0145000633460130','2021-12-17 19:25:10'),(18523548,'101','01',2,2,'2019-09-12','2019-09-12 16:04:01','0479EF','BCA',1,3500,61000,'0145000142844873','2021-12-17 19:25:10'),(18523549,'101','01',2,2,'2019-09-12','2019-09-12 16:04:13','0479F0','MANDIRI',1,3500,7000,'6032981055352157','2021-12-17 19:25:10'),(18523550,'101','01',2,2,'2019-09-12','2019-09-12 16:04:26','0479F1','BNI',1,3500,166700,'7546130004110921','2021-12-17 19:25:10'),(18523551,'101','01',2,2,'2019-09-12','2019-09-12 16:04:45','0479F2','BRI',1,3500,83375,'6013501809217028','2021-12-17 19:25:10'),(18523552,'101','01',2,2,'2019-09-12','2019-09-12 16:04:55','0479F3','MANDIRI',1,3500,26450,'6032981040402299','2021-12-17 19:25:10'),(18523553,'101','01',2,2,'2019-09-12','2019-09-12 16:05:03','0479F4','MANDIRI',1,3500,188000,'6032986072372369','2021-12-17 19:25:10'),(18523554,'101','01',2,2,'2019-09-12','2019-09-12 16:05:15','0479F5','BCA',1,3500,241500,'0145008201091088','2021-12-17 19:25:10'),(18523555,'101','01',2,2,'2019-09-12','2019-09-12 16:05:28','0479F6','MANDIRI',1,3500,72300,'6032981041355967','2021-12-17 19:25:10'),(18523556,'101','01',2,2,'2019-09-12','2019-09-12 16:05:47','0479F7','BCA',1,3500,59279,'0145000600923490','2021-12-17 19:25:10'),(18523557,'101','01',2,2,'2019-09-12','2019-09-12 16:06:08','0479F8','BRI',1,3500,23950,'6013500138457784','2021-12-17 19:25:10'),(18523558,'101','01',2,2,'2019-09-12','2019-09-12 16:06:21','0479F9','BRI',1,3500,202100,'6013500122683296','2021-12-17 19:25:10'),(18523559,'101','01',2,2,'2019-09-12','2019-09-12 16:06:31','0479FA','MANDIRI',1,3500,37450,'6032981037291234','2021-12-17 19:25:10'),(18523560,'101','01',2,2,'2019-09-12','2019-09-12 16:06:51','0479FB','BCA',1,3500,21000,'0145000118877907','2021-12-17 19:25:10'),(18523561,'101','01',2,2,'2019-09-12','2019-09-12 16:07:02','0479FC','MANDIRI',1,3500,124700,'6032981042705491','2021-12-17 19:25:10'),(18523562,'101','01',2,2,'2019-09-12','2019-09-12 16:07:12','0479FD','MANDIRI',1,3500,29725,'6032986047058234','2021-12-17 19:25:10'),(18523563,'101','01',2,2,'2019-09-12','2019-09-12 16:07:23','0479FE','MANDIRI',1,3500,45250,'6032984042707392','2021-12-17 19:25:10'),(18523564,'101','01',2,2,'2019-09-12','2019-09-12 16:07:34','0479FF','MANDIRI',1,3500,35825,'6032981055150130','2021-12-17 19:25:10'),(18523565,'101','01',2,2,'2019-09-12','2019-09-12 16:07:43','047A00','BCA',1,3500,47925,'0145007203379533','2021-12-17 19:25:10'),(18523566,'101','01',2,2,'2019-09-12','2019-09-12 16:07:55','047A01','MANDIRI',1,3500,117575,'6032986043131134','2021-12-17 19:25:10'),(18523567,'101','01',2,2,'2019-09-12','2019-09-12 16:08:05','047A02','BCA',1,3500,47500,'0145000136835051','2021-12-17 19:25:10'),(18523568,'101','01',2,2,'2019-09-12','2019-09-12 16:08:16','047A03','BCA',1,3500,50500,'0145000633859554','2021-12-17 19:25:10'),(18523569,'101','01',2,2,'2019-09-12','2019-09-12 16:08:30','047A04','MANDIRI',1,3500,16250,'6032986059083161','2021-12-17 19:25:10'),(18523570,'101','01',2,2,'2019-09-12','2019-09-12 16:08:44','047A05','BCA',1,3500,4500,'0145000639987730','2021-12-17 19:25:10'),(18523571,'101','01',2,2,'2019-09-12','2019-09-12 16:08:53','047A06','MANDIRI',1,3500,76000,'6032986088073902','2021-12-17 19:25:10'),(18523572,'101','01',2,2,'2019-09-12','2019-09-12 16:09:04','047A07','BCA',1,3500,91400,'0145000600909127','2021-12-17 19:25:10'),(18523573,'101','01',2,2,'2019-09-12','2019-09-12 16:09:22','047A08','BNI',1,3500,241725,'7546130001156521','2021-12-17 19:25:10'),(18523574,'101','01',2,2,'2019-09-12','2019-09-12 16:09:53','047A09','MANDIRI',1,3500,63000,'6032981048337596','2021-12-17 19:25:10'),(18523575,'101','01',2,2,'2019-09-12','2019-09-12 16:10:06','047A0A','BCA',1,3500,44650,'0145000633432105','2021-12-17 19:25:10'),(18523576,'101','01',2,2,'2019-09-12','2019-09-12 16:10:19','047A0B','BRI',1,3500,49499,'6013500143094861','2021-12-17 19:25:10'),(18523577,'101','01',2,2,'2019-09-12','2019-09-12 16:10:32','047A0C','BRI',1,3500,49625,'6013500136995652','2021-12-17 19:25:10'),(18523578,'101','01',2,2,'2019-09-12','2019-09-12 16:10:46','047A0D','MANDIRI',1,3500,63225,'6032981054844022','2021-12-17 19:25:10'),(18523579,'101','01',2,2,'2019-09-12','2019-09-12 16:10:55','047A0E','MANDIRI',1,3500,40750,'6032981055322564','2021-12-17 19:25:10'),(18523580,'101','01',2,2,'2019-09-12','2019-09-12 16:11:07','047A0F','MANDIRI',1,3500,49000,'6032981054778170','2021-12-17 19:25:10'),(18523581,'101','01',2,2,'2019-09-12','2019-09-12 16:11:34','047A10','BNI',1,3500,53900,'7546000005823865','2021-12-17 19:25:10'),(18523582,'101','01',2,2,'2019-09-12','2019-09-12 16:11:57','047A11','BCA',1,3500,30500,'0145000636202000','2021-12-17 19:25:10'),(18523583,'101','01',2,2,'2019-09-12','2019-09-12 16:12:26','047A12','BCA',1,3500,45500,'0145000637007408','2021-12-17 19:25:10'),(18523584,'101','01',2,2,'2019-09-12','2019-09-12 16:12:33','047A13','BCA',1,3500,52000,'0145000146298787','2021-12-17 19:25:10'),(18523585,'101','01',2,2,'2019-09-12','2019-09-12 16:12:49','047A14','BCA',1,3500,52698,'0145000633860156','2021-12-17 19:25:10'),(18523586,'101','01',2,2,'2019-09-12','2019-09-12 16:13:00','047A15','BCA',1,3500,50300,'0145000650233279','2021-12-17 19:25:10'),(18523587,'101','01',2,2,'2019-09-12','2019-09-12 16:13:13','047A16','MANDIRI',1,3500,29825,'6032983401278615','2021-12-17 19:25:10'),(18523588,'101','01',2,2,'2019-09-12','2019-09-12 16:13:27','047A17','MANDIRI',1,3500,25500,'6032986077358611','2021-12-17 19:25:10'),(18523589,'101','01',2,2,'2019-09-12','2019-09-12 16:13:39','047A18','BCA',1,3500,269600,'0145000148888460','2021-12-17 19:25:10'),(18523590,'101','01',2,2,'2019-09-12','2019-09-12 16:13:50','047A19','BRI',1,3500,120725,'6013500141866690','2021-12-17 19:25:10'),(18523591,'101','01',2,2,'2019-09-12','2019-09-12 16:13:59','047A1A','BNI',1,3500,90525,'7546020004521229','2021-12-17 19:25:10'),(18523592,'101','01',2,2,'2019-09-12','2019-09-12 16:14:08','047A1B','BCA',1,3500,7600,'0145000629541273','2021-12-17 19:25:10'),(18523593,'101','01',2,2,'2019-09-12','2019-09-12 16:14:24','047A1C','BCA',1,3500,345500,'0145000631094501','2021-12-17 19:25:10'),(18523594,'101','01',2,2,'2019-09-12','2019-09-12 16:14:32','047A1D','MANDIRI',1,3500,62150,'6032981041033515','2021-12-17 19:25:10'),(18523595,'101','01',2,2,'2019-09-12','2019-09-12 16:14:45','047A1E','MANDIRI',1,3500,45250,'6032984068185796','2021-12-17 19:25:10'),(18523596,'101','01',2,2,'2019-09-12','2019-09-12 16:15:04','047A1F','MANDIRI',1,3500,191551,'6032984066667662','2021-12-17 19:25:10'),(18523597,'101','01',2,2,'2019-09-12','2019-09-12 16:15:15','047A20','BNI',1,3500,201000,'7546020002119828','2021-12-17 19:25:10'),(18523598,'101','01',2,2,'2019-09-12','2019-09-12 16:15:24','047A21','BCA',1,3500,23375,'0145000137505703','2021-12-17 19:25:10'),(18523599,'101','01',2,2,'2019-09-12','2019-09-12 16:15:38','047A22','BCA',1,3500,47000,'0145000138045204','2021-12-17 19:25:10'),(18523600,'101','01',2,2,'2019-09-12','2019-09-12 16:15:48','047A23','MANDIRI',1,3500,60550,'6032986030092455','2021-12-17 19:25:10'),(18523601,'202','02',1,1,'2020-07-09','2020-07-09 12:44:49','00EF24','MANDIRI',1,4000,70000,'6032986059072321','2021-12-22 05:36:12'),(18523602,'202','02',1,1,'2020-07-09','2020-07-09 12:44:31','00EF23','MANDIRI',1,4000,52000,'6032986099986712','2021-12-22 05:36:12'),(18523603,'202','02',1,1,'2020-07-09','2020-07-09 12:44:19','00EF22','MANDIRI',1,4000,25475,'6032981054380142','2021-12-22 05:36:12'),(18523604,'202','02',1,1,'2020-07-09','2020-07-09 12:44:03','00EF21','BRI',2,5500,28000,'6013500429562656','2021-12-22 05:36:12'),(18523605,'202','02',1,1,'2020-07-09','2020-07-09 12:43:13','00EF20','BRI',1,4000,195700,'6013500429339428','2021-12-22 05:36:12'),(18523606,'202','02',1,1,'2020-07-09','2020-07-09 12:42:50','00EF1F','MANDIRI',3,5500,1925,'6032981054775226','2021-12-22 05:36:12'),(18523607,'202','02',1,1,'2020-07-09','2020-07-09 12:42:01','00EF1E','BRI',3,5500,9000,'6013500414312505','2021-12-22 05:36:12'),(18523608,'202','02',1,1,'2020-07-09','2020-07-09 12:41:40','00EF1D','MANDIRI',3,5500,20825,'6032981055448302','2021-12-22 05:36:12'),(18523609,'202','02',1,1,'2020-07-09','2020-07-09 12:41:26','00EF1C','BCA',1,4000,15150,'0145000135366066','2021-12-22 05:36:12'),(18523610,'202','02',1,1,'2020-07-09','2020-07-09 12:41:15','00EF1B','MANDIRI',1,4000,102125,'6032986046764204','2021-12-22 05:36:12'),(18523611,'202','02',1,1,'2020-07-09','2020-07-09 12:41:01','00EF1A','BRI',1,4000,26250,'6013500147908348','2021-12-22 05:36:12'),(18523612,'202','02',1,1,'2020-07-09','2020-07-09 12:40:49','00EF19','BCA',1,4000,115000,'0145007206253495','2021-12-22 05:36:12'),(18523613,'202','02',1,1,'2020-07-09','2020-07-09 12:40:32','00EF18','BCA',1,4000,158000,'0145000129822819','2021-12-22 05:36:12'),(18523614,'202','02',1,1,'2020-07-09','2020-07-09 12:40:15','00EF17','MANDIRI',3,5500,16450,'6032981056790967','2021-12-22 05:36:12'),(18523615,'202','02',1,1,'2020-07-09','2020-07-09 12:39:37','00EF16','BRI',1,4000,43000,'6013500428825435','2021-12-22 05:36:12'),(18523616,'202','02',1,1,'2020-07-09','2020-07-09 12:39:26','00EF15','BCA',1,4000,24500,'0145000115646537','2021-12-22 05:36:12'),(18523617,'202','02',1,1,'2020-07-09','2020-07-09 12:39:13','00EF14','BCA',2,5500,188500,'0145000636092518','2021-12-22 05:36:12'),(18523618,'202','02',1,1,'2020-07-09','2020-07-09 12:38:58','00EF13','MANDIRI',1,4000,67500,'6032986086054102','2021-12-22 05:36:12'),(18523619,'202','02',1,1,'2020-07-09','2020-07-09 12:38:31','00EF12','BCA',2,5500,89000,'0145007206247604','2021-12-22 05:36:12'),(18523620,'202','02',1,1,'2020-07-09','2020-07-09 12:37:53','00EF11','BCA',3,5500,186500,'0145000629565777','2021-12-22 05:36:12'),(18523621,'202','02',1,1,'2020-07-09','2020-07-09 12:37:37','00EF10','MANDIRI',3,5500,27900,'6032981054844063','2021-12-22 05:36:12'),(18523622,'202','02',1,1,'2020-07-09','2020-07-09 12:37:15','00EF0F','BCA',3,5500,234000,'0145000646371779','2021-12-22 05:36:12'),(18523623,'202','02',1,1,'2020-07-09','2020-07-09 12:37:02','00EF0E','BCA',1,4000,67300,'0145000154950493','2021-12-22 05:36:12'),(18523624,'202','02',1,1,'2020-07-09','2020-07-09 12:36:41','00EF0D','BNI',1,4000,111500,'7546000006430884','2021-12-22 05:36:12'),(18523625,'202','02',1,1,'2020-07-09','2020-07-09 12:36:30','00EF0C','BCA',1,4000,42000,'0145000135440911','2021-12-22 05:36:12'),(18523626,'202','02',1,1,'2020-07-09','2020-07-09 12:36:14','00EF0B','BRI',2,5500,45350,'6013501802907401','2021-12-22 05:36:12'),(18523627,'202','02',1,1,'2020-07-09','2020-07-09 12:36:03','00EF0A','BCA',1,4000,43000,'0145200000443533','2021-12-22 05:36:12'),(18523628,'202','02',1,1,'2020-07-09','2020-07-09 12:35:48','00EF09','BCA',1,4000,35000,'0145000128643356','2021-12-22 05:36:12'),(18523629,'202','02',1,1,'2020-07-09','2020-07-09 12:35:04','00EF08','BCA',1,4000,10500,'0145000633470600','2021-12-22 05:36:12'),(18523630,'202','02',1,1,'2020-07-09','2020-07-09 12:34:52','00EF07','MANDIRI',1,4000,36000,'6032984042393987','2021-12-22 05:36:12'),(18523631,'202','02',1,1,'2020-07-09','2020-07-09 12:34:25','00EF06','BRI',2,5500,100450,'6013501804194586','2021-12-22 05:36:12'),(18523632,'202','02',1,1,'2020-07-09','2020-07-09 12:34:11','00EF05','MANDIRI',1,4000,22000,'6032986099976572','2021-12-22 05:36:12'),(18523633,'202','02',1,1,'2020-07-09','2020-07-09 12:33:47','00EF04','BCA',1,4000,56900,'0145000142721493','2021-12-22 05:36:12'),(18523634,'202','02',1,1,'2020-07-09','2020-07-09 12:33:16','00EF03','BCA',2,5500,57000,'0145007400760808','2021-12-22 05:36:12'),(18523635,'202','02',1,1,'2020-07-09','2020-07-09 12:32:47','00EF02','MANDIRI',3,5500,15500,'6032986095364765','2021-12-22 05:36:12'),(18523636,'202','02',1,1,'2020-07-09','2020-07-09 12:32:25','00EF01','BCA',3,5500,38500,'0145000640092561','2021-12-22 05:36:12'),(18523637,'202','02',1,1,'2020-07-09','2020-07-09 12:32:12','00EF00','BCA',1,4000,5896,'0145000626989723','2021-12-22 05:36:12'),(18523638,'202','02',1,1,'2020-07-09','2020-07-09 12:31:00','00EEFF','BRI',1,4000,72475,'6013502004491079','2021-12-22 05:36:12'),(18523639,'202','02',1,1,'2020-07-09','2020-07-09 12:30:41','00EEFE','MANDIRI',3,5500,134850,'6032984059527071','2021-12-22 05:36:12'),(18523640,'202','02',1,1,'2020-07-09','2020-07-09 12:30:10','00EEFD','MANDIRI',3,5500,12205,'6032986074733014','2021-12-22 05:36:12'),(18523641,'202','02',1,1,'2020-07-09','2020-07-09 12:29:50','00EEFC','BCA',1,4000,3000,'0145000154884130','2021-12-22 05:36:12'),(18523642,'202','02',1,1,'2020-07-09','2020-07-09 12:29:39','00EEFB','BCA',1,4000,30100,'0145000650443043','2021-12-22 05:36:12'),(18523643,'202','02',1,1,'2020-07-09','2020-07-09 12:29:27','00EEFA','BCA',1,4000,7500,'0145000138052721','2021-12-22 05:36:12'),(18523644,'202','02',1,1,'2020-07-09','2020-07-09 12:29:07','00EEF9','BCA',1,4000,64800,'0145000631098692','2021-12-22 05:36:12'),(18523645,'202','02',1,1,'2020-07-09','2020-07-09 12:28:51','00EEF8','BCA',3,5500,5500,'0145200001298423','2021-12-22 05:36:12'),(18523646,'202','02',1,1,'2020-07-09','2020-07-09 12:28:18','00EEF7','MANDIRI',1,4000,99175,'6032986071296601','2021-12-22 05:36:12'),(18523647,'202','02',1,1,'2020-07-09','2020-07-09 12:27:04','00EEF6','MANDIRI',1,4000,91500,'6032981055437099','2021-12-22 05:36:12'),(18523648,'202','02',1,1,'2020-07-09','2020-07-09 12:26:49','00EEF5','BCA',1,4000,119000,'0145200000297574','2021-12-22 05:36:12'),(18523649,'202','02',1,1,'2020-07-09','2020-07-09 12:26:23','00EEF4','MANDIRI',1,4000,14250,'6032986058163501','2021-12-22 05:36:12'),(18523650,'202','02',1,1,'2020-07-09','2020-07-09 12:26:12','00EEF3','MANDIRI',1,4000,61025,'6032981042750893','2021-12-22 05:36:12'),(18523651,'202','02',1,1,'2020-07-09','2020-07-09 12:26:00','00EEF2','MANDIRI',1,4000,12625,'6032986066745075','2021-12-22 05:36:12'),(18523652,'202','02',1,1,'2020-07-09','2020-07-09 12:25:46','00EEF1','BCA',2,5500,852300,'0145000118331707','2021-12-22 05:36:12'),(18523653,'202','02',1,1,'2020-07-09','2020-07-09 12:25:35','00EEF0','BCA',1,4000,31000,'0145000140657475','2021-12-22 05:36:12'),(18523654,'202','02',1,1,'2020-07-09','2020-07-09 12:25:21','00EEEF','BCA',1,4000,19000,'0145000146313008','2021-12-22 05:36:12'),(18523655,'202','02',1,1,'2020-07-09','2020-07-09 12:25:07','00EEEE','BCA',1,4000,3600,'0145000132390200','2021-12-22 05:36:12'),(18523656,'202','02',1,1,'2020-07-09','2020-07-09 12:24:49','00EEED','MANDIRI',1,4000,40350,'6032981039184379','2021-12-22 05:36:12'),(18523657,'202','02',1,1,'2020-07-09','2020-07-09 12:24:39','00EEEC','BCA',1,4000,64000,'0145000139978098','2021-12-22 05:36:12'),(18523658,'202','02',1,1,'2020-07-09','2020-07-09 12:24:21','00EEEB','BNI',1,4000,22275,'7546030000646227','2021-12-22 05:36:12'),(18523659,'202','02',1,1,'2020-07-09','2020-07-09 12:23:39','00EEEA','MANDIRI',2,5500,18500,'6032984059075139','2021-12-22 05:36:12'),(18523660,'202','02',1,1,'2020-07-09','2020-07-09 12:23:25','00EEE9','BCA',1,4000,61500,'0145000155861525','2021-12-22 05:36:12'),(18523661,'202','02',1,1,'2020-07-09','2020-07-09 12:23:09','00EEE8','MANDIRI',1,4000,46250,'6032981029892643','2021-12-22 05:36:12'),(18523662,'202','02',1,1,'2020-07-09','2020-07-09 12:22:59','00EEE7','BCA',1,4000,128750,'0145000407578497','2021-12-22 05:36:12'),(18523663,'202','02',1,1,'2020-07-09','2020-07-09 12:22:42','00EEE6','BCA',1,4000,36000,'0145200008115018','2021-12-22 05:36:12'),(18523664,'202','02',1,1,'2020-07-09','2020-07-09 12:22:30','00EEE5','BCA',1,4000,103500,'0145000630774889','2021-12-22 05:36:12'),(18523665,'202','02',1,1,'2020-07-09','2020-07-09 12:22:19','00EEE4','BCA',1,4000,40500,'0145007200842970','2021-12-22 05:36:12'),(18523666,'202','02',1,1,'2020-07-09','2020-07-09 12:22:03','00EEE3','BRI',2,5500,8950,'6013500129699691','2021-12-22 05:36:12'),(18523667,'202','02',1,1,'2020-07-09','2020-07-09 12:21:00','00EEE2','BCA',1,4000,56525,'0145000637792884','2021-12-22 05:36:12'),(18523668,'202','02',1,1,'2020-07-09','2020-07-09 12:20:47','00EEE1','MANDIRI',1,4000,250000,'6032984082507660','2021-12-22 05:36:12'),(18523669,'202','02',1,1,'2020-07-09','2020-07-09 12:20:10','00EEE0','BRI',1,4000,6500,'6013501803013597','2021-12-22 05:36:12'),(18523670,'202','02',1,1,'2020-07-09','2020-07-09 12:19:43','00EEDF','BCA',4,9000,26500,'0145000152107179','2021-12-22 05:36:12'),(18523671,'202','02',1,1,'2020-07-09','2020-07-09 12:19:27','00EEDE','BCA',1,4000,2000,'0145200001298506','2021-12-22 05:36:12'),(18523672,'202','02',1,1,'2020-07-09','2020-07-09 12:19:14','00EEDD','BCA',1,4000,748000,'0145008200075389','2021-12-22 05:36:12'),(18523673,'202','02',1,1,'2020-07-09','2020-07-09 12:18:57','00EEDC','MANDIRI',1,4000,90150,'6032981056044563','2021-12-22 05:36:12'),(18523674,'202','02',1,1,'2020-07-09','2020-07-09 12:18:42','00EEDB','BNI',1,4000,59500,'7546030002699992','2021-12-22 05:36:12'),(18523675,'202','02',1,1,'2020-07-09','2020-07-09 12:18:26','00EEDA','BCA',1,4000,37000,'0145000154913806','2021-12-22 05:36:12'),(18523676,'202','02',1,1,'2020-07-09','2020-07-09 12:18:02','00EED9','BRI',2,5500,501118,'6013501809703332','2021-12-22 05:36:12'),(18523677,'202','02',1,1,'2020-07-09','2020-07-09 12:17:50','00EED8','BCA',1,4000,42500,'0145200001098849','2021-12-22 05:36:12'),(18523678,'202','02',1,1,'2020-07-09','2020-07-09 12:17:39','00EED7','MANDIRI',1,4000,68875,'6032981056791775','2021-12-22 05:36:12'),(18523679,'202','02',1,1,'2020-07-09','2020-07-09 12:17:16','00EED6','BCA',2,5500,379000,'0145000629662418','2021-12-22 05:36:12'),(18523680,'202','02',1,1,'2020-07-09','2020-07-09 12:16:55','00EED5','MANDIRI',4,9000,138025,'6032981056055908','2021-12-22 05:36:12'),(18523681,'202','02',1,1,'2020-07-09','2020-07-09 12:16:40','00EED4','MANDIRI',2,5500,91250,'6032981056071525','2021-12-22 05:36:12'),(18523682,'202','02',1,1,'2020-07-09','2020-07-09 12:16:26','00EED3','BCA',1,4000,12500,'0145000134280599','2021-12-22 05:36:12'),(18523683,'202','02',1,1,'2020-07-09','2020-07-09 12:16:13','00EED2','BCA',1,4000,29100,'0145000145739773','2021-12-22 05:36:12'),(18523684,'202','02',1,1,'2020-07-09','2020-07-09 12:15:46','00EED1','BCA',1,4000,172250,'0145000138247776','2021-12-22 05:36:12'),(18523685,'202','02',1,1,'2020-07-09','2020-07-09 12:15:29','00EED0','MANDIRI',1,4000,23550,'6032981056097116','2021-12-22 05:36:12'),(18523686,'202','02',1,1,'2020-07-09','2020-07-09 12:15:16','00EECF','MANDIRI',1,4000,67550,'6032981056094659','2021-12-22 05:36:12'),(18523687,'202','02',1,1,'2020-07-09','2020-07-09 12:14:38','00EECE','BRI',1,4000,48800,'6013500135994706','2021-12-22 05:36:12'),(18523688,'202','02',1,1,'2020-07-09','2020-07-09 12:14:17','00EECD','BCA',1,4000,101000,'0145000150367767','2021-12-22 05:36:12'),(18523689,'202','02',1,1,'2020-07-09','2020-07-09 12:14:04','00EECC','BCA',1,4000,9000,'0145000148925130','2021-12-22 05:36:12'),(18523690,'202','02',1,1,'2020-07-09','2020-07-09 12:13:53','00EECB','BRI',1,4000,63000,'6013501813128765','2021-12-22 05:36:12'),(18523691,'202','02',1,1,'2020-07-09','2020-07-09 12:13:28','00EECA','MANDIRI',1,4000,61000,'6032981048227540','2021-12-22 05:36:12'),(18523692,'202','02',1,1,'2020-07-09','2020-07-09 12:13:00','00EEC9','MANDIRI',1,4000,207050,'6032986047843288','2021-12-22 05:36:12'),(18523693,'202','02',1,1,'2020-07-09','2020-07-09 12:12:40','00EEC8','MANDIRI',1,4000,87000,'6032984069534596','2021-12-22 05:36:12'),(18523694,'202','02',1,1,'2020-07-09','2020-07-09 12:12:02','00EEC7','MANDIRI',4,9000,104900,'6032981054756275','2021-12-22 05:36:12'),(18523695,'202','02',1,1,'2020-07-09','2020-07-09 12:11:45','00EEC6','MANDIRI',2,5500,140200,'6032986074747337','2021-12-22 05:36:12'),(18523696,'202','02',1,1,'2020-07-09','2020-07-09 12:11:30','00EEC5','BRI',2,5500,59000,'6013500431264010','2021-12-22 05:36:12'),(18523697,'202','02',1,1,'2020-07-09','2020-07-09 12:11:15','00EEC4','MANDIRI',4,9000,194500,'6032986093727443','2021-12-22 05:36:12'),(18523698,'202','02',1,1,'2020-07-09','2020-07-09 12:11:01','00EEC3','BCA',2,5500,122000,'0145007206058837','2021-12-22 05:36:12'),(18523699,'202','02',1,1,'2020-07-09','2020-07-09 12:10:46','00EEC2','BCA',1,4000,24775,'0145000631073471','2021-12-22 05:36:12'),(18523700,'202','02',1,1,'2020-07-09','2020-07-09 12:10:30','00EEC1','MANDIRI',3,5500,90525,'6032984059527006','2021-12-22 05:36:12');
/*!40000 ALTER TABLE `test_kartu` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrmks`@`localhost`*/ /*!50003 TRIGGER `test_kartu_after_insert` AFTER INSERT ON `test_kartu` FOR EACH ROW BEGIN
	INSERT INTO kartu_all_time (metode,kartu,jumlah_transaksi)
		VALUES(NEW.metode,NEW.kartu, 1 )
	ON DUPLICATE KEY UPDATE jumlah_transaksi=jumlah_transaksi+1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `user_detail`
--

DROP TABLE IF EXISTS `user_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `no_telp` varchar(20) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_detail`
--

LOCK TABLES `user_detail` WRITE;
/*!40000 ALTER TABLE `user_detail` DISABLE KEYS */;
INSERT INTO `user_detail` VALUES (1,1,'081943678234','TEST','2022-01-05 07:59:27','2022-01-05 07:59:27'),(2,8,'081354717175','makassar\r\ngowa','2022-01-11 06:00:18','2022-01-11 06:00:18'),(3,18,'081345672345','Bogor','2022-01-12 06:51:44','2022-01-12 06:51:44'),(4,22,'081298672760','Jln. Sukaria 13B','2022-01-26 04:05:15','2022-01-26 04:05:15'),(5,23,'081355064379','Jl. Sungai Saddang IV No 16 B','2022-01-29 08:40:04','2022-01-29 08:40:04'),(6,24,'08114301004','Jl. Bakung 3, No. 26','2022-01-30 12:51:06','2022-01-30 12:51:06'),(7,25,'082240487722','Jalan A. Mauraga Dalam, Kel. Tumampua, Kec. Pangkajene, Kab. Pangkajene dan Kepualauan','2022-01-31 00:38:05','2022-01-31 00:38:05'),(8,26,'085320572231','kirana 3 no. 11 Villa Mutiara','2022-02-01 23:20:22','2022-02-01 23:20:22'),(9,27,'085230031215','Kompleks Beverly Hills Blok B - 15','2022-02-02 08:22:23','2022-02-02 08:22:23'),(10,28,'085396247072','BTN PESONA ALAM MAS BLOK A 4','2022-02-02 11:52:27','2022-02-02 11:52:27'),(11,29,'081347972175','BTN PURI INDAH PERMAI BLOK B/31','2022-02-02 14:23:25','2022-02-02 14:23:25'),(12,30,'085298030110','BTN pepabri blok b3 no 6','2022-02-04 02:09:23','2022-02-04 02:09:23'),(13,31,'081224422654','Perum Kaliwungu Indah 010/010 Protomulyo Kaliwungu Selatan','2022-02-04 04:01:03','2022-02-04 04:01:03'),(14,32,'082293033020','Jl. Ahmad Yani A18\r\nPattunuang, Kec. Wajo, Kota Makassar, Sulawesi Selatan 90171','2022-02-05 04:35:15','2022-02-05 04:35:15'),(15,33,'081355583057','Jl. P. Kemerdekaan Komp BPS Blok G11/43 Sudiang Makassar','2022-02-06 05:49:19','2022-02-06 05:49:19'),(16,34,'082190875657','Jl.pettapunggawa makassar no 59','2022-02-06 08:27:58','2022-02-06 08:27:58'),(17,35,'081341063538','jln puri pattene permai blok e1/10','2022-02-06 13:34:10','2022-02-06 13:34:10'),(18,36,'085295333336','Jl. Petta Ponggawae','2022-02-07 00:30:35','2022-02-07 00:30:35'),(19,37,'085256355743','BTP BLOK E NO.10','2022-02-07 02:33:42','2022-02-07 02:33:42'),(20,38,'085238199984','karang bali, kel. tiwugalih, kec. Praya, kab. Lombok tengah','2022-02-07 02:59:31','2022-02-07 02:59:31'),(21,39,'085255855141','BTN Gelora Baddoka Indah Blok B1/98 kelurahan Pai kecamatan Biringkanaya Kota Makassar','2022-02-07 03:15:41','2022-02-07 03:15:41'),(22,40,'082195698154','Jl Yunus Dg Sirua Maccopa Maros','2022-02-07 04:22:48','2022-02-07 04:22:48'),(23,41,'0882022175423','Perumahan citra daya permai 2','2022-02-07 05:42:03','2022-02-07 05:42:03'),(24,42,'08124150664','BTN Puri Pattene Permai, Blok A 12 No.7','2022-02-07 07:50:51','2022-02-07 07:50:51'),(25,43,'082345669933','Jl. Manyikkoaya Sudiang','2022-02-07 08:12:14','2022-02-07 08:12:14'),(26,44,'0895800992319','Jalan Pongtiku, No.158','2022-02-07 11:18:39','2022-02-07 11:18:39'),(27,45,'082293336032','Jln Batara Bira 6, Kompleks PU Pusido Baddoka Km 16, Makassar','2022-02-08 03:14:55','2022-02-08 03:14:55'),(28,46,'082187220093','TAMAN SUDIANG INDAH BLOK D2/6','2022-02-08 05:45:57','2022-02-08 05:45:57'),(29,47,'085103013183','Jalan muchtar lutfi 26B','2022-02-08 07:48:26','2022-02-08 07:48:26'),(30,48,'081939363831','Jln bontoa','2022-02-08 08:07:56','2022-02-08 08:07:56'),(31,49,'08114607745','Jl.rajawali 1 Lr.13b No.9c','2022-02-08 09:07:13','2022-02-08 09:07:13'),(32,50,'085256929675','Jl Tinumbu Lr 148','2022-02-08 09:22:32','2022-02-08 09:22:32'),(33,51,'08114909533','Taman Sudiang Indah Blok C1 No. 05','2022-02-08 11:22:37','2022-02-08 11:22:37'),(34,52,'081354715511','anwarkadir70@gmail.com','2022-02-08 23:25:12','2022-02-08 23:25:12'),(35,53,'085341106888','Perum Sinar Abadi Residence Blok D no 2\r\nJl Terminal Baru Kel Mappasaile Kec Pangkajene Kab Pangkep','2022-02-09 03:47:28','2022-02-09 03:47:28'),(36,54,'082274839576','LAHEMO DUSUN IV','2022-02-09 04:43:48','2022-02-09 04:43:48'),(37,55,'08176050990','Permata biru blok c 29','2022-02-09 07:01:15','2022-02-09 07:01:15'),(38,56,'089665544333','Graha cemerlang kompleks ruko blok B no. 9 kelurahan hasanuddin kecamatan mandai kabupaten maros','2022-02-09 07:52:05','2022-02-09 07:52:05'),(39,57,'08970803053','Graha cemerlang komp ruko blok B No  9 maros','2022-02-09 07:55:40','2022-02-09 07:55:40'),(40,58,'089680643343','Pekang Labbu RT.001 RW.003 Desa TeteBatu Kecamatan Palangga Kab. Gowa','2022-02-09 08:49:59','2022-02-09 08:49:59'),(41,59,'+6282292770237','Jl Urip Sumiharjo Ruko KTC NO A1-A2','2022-02-10 00:43:55','2022-02-10 00:43:55'),(42,60,'089654363174','Jl Sultan Alauddin No. 381 Makassar','2022-02-10 07:16:41','2022-02-10 07:16:41'),(43,61,'085398836602','BTN. Pondok Asri 1 Blok B7 No. 17 Sudiang Kelurahan Bakung, Kecamatan Biringkanaya','2022-02-10 07:47:00','2022-02-10 07:47:00'),(44,62,'08124207707','BTN CINRANAE BLOK N1 BULU BULU MAROS','2022-02-10 08:40:49','2022-02-10 08:40:49'),(45,63,'082199666611','Jln lokae no. 101 Manggalung','2022-02-11 03:22:21','2022-02-11 03:22:21'),(46,64,'085299302590','JL. TUPOLEV 5 DUSUN BADDO-BADDO, MAROS','2022-02-11 08:49:35','2022-02-11 08:49:35'),(47,65,'081214876696','Jl Jalak 15 Singaraja','2022-02-12 00:40:30','2022-02-12 00:40:30'),(48,66,'081282415101','Mutiara Gading Timur Blok N18/21\r\nBekasi','2022-02-12 00:41:11','2022-02-12 00:41:11'),(49,67,'85240266572','Perumahan phinisi Nusantara Blok c/21','2022-02-12 02:02:38','2022-02-12 02:02:38'),(50,68,'08991772715','Citra garden B5/10, jl yusuf bauti','2022-02-12 06:03:17','2022-02-12 06:03:17'),(51,69,'085242273875','Jl. Balaikota No.4 Kota Makassar','2022-02-12 07:24:25','2022-02-12 07:24:25'),(52,70,'082296573557','Jl. Pelita VI C.P. Permai A.8 Makassar','2022-02-12 08:54:12','2022-02-12 08:54:12'),(53,71,'081230087447','Jalan Manyar Rejo 8/29 Surabaya','2022-02-12 11:16:35','2022-02-12 11:16:35'),(54,72,'08161695464','Jl. Kelapa Puan XXV AK5/52, Tangerang','2022-02-13 05:03:07','2022-02-13 05:03:07'),(55,73,'081230261489','Perum Mustika Griya Permai Blok E No 196','2022-02-13 05:34:19','2022-02-13 05:34:19'),(56,74,'08114444773','BTN Cemara Hijau Asri B/3 Sungguminasa','2022-02-13 10:01:26','2022-02-13 10:01:26'),(57,75,'081703233836','Jalan Andalas No.206, Makassar','2022-02-14 09:33:08','2022-02-14 09:33:08'),(58,76,'085241802307','Jl. Tentara Pelajar No. 173','2022-02-14 11:14:34','2022-02-14 11:14:34'),(59,77,'081342755794','Btn pondok asri 1 sudiang blok b4 no.2','2022-02-14 21:32:25','2022-02-14 21:32:25'),(60,78,'082191633900','BTN Bumi Laikang Indah Blok D4 No.2 Sudiang Makassar','2022-02-15 00:05:42','2022-02-15 00:05:42'),(61,79,'08114101016','Jl. Maccini raya perumahan pondok indah makassar Blok A No.12B','2022-02-15 07:22:22','2022-02-15 07:22:22'),(62,80,'081355837777','Kompleks unhas antang','2022-02-16 09:01:29','2022-02-16 09:01:29'),(63,81,'08114118105','Jl.Komp.Perhubungan Laut F2 No.7 Tallo Lama Makassar','2022-02-17 00:11:19','2022-02-17 00:11:19'),(64,82,'08114194783','Jl goa ria, griya pratama sudiang D3/8 makassar','2022-02-17 06:50:36','2022-02-17 06:50:36'),(65,83,'085824221618','Jalan Gunung Latimojong lr.36 no.34','2022-02-17 10:04:37','2022-02-17 10:04:37'),(66,84,'08111230141','Desa limbuang\r\nKecamatan maiwa','2022-02-18 04:38:47','2022-02-18 04:38:47'),(67,85,'082188977000','Jalan Pemuda, No.90.C, Kab.Batang, Jawa Tengah','2022-02-18 07:27:17','2022-02-18 07:27:17'),(68,86,'082292439912','Griya batas kota','2022-02-18 08:15:24','2022-02-18 08:15:24'),(69,87,'081355357357','Jl. Gunung Latimojong No. 95A','2022-02-19 20:48:35','2022-02-19 20:48:35'),(70,88,'085299952227','Jl. Perintis kemerdekaan km 17, komp BDLHK Makassar','2022-02-20 05:16:43','2022-02-20 05:16:43'),(71,89,'082394012327','Jl daengta qalia','2022-02-20 07:02:32','2022-02-20 07:02:32'),(72,90,'08114129777','Jl. Tamangapa raya 3 komp. Pesona prima griya blok. Sun flower no 25 antang','2022-02-21 04:06:57','2022-02-21 04:06:57'),(73,91,'08124152843','Jalan tala Salapang no.38','2022-02-21 21:50:09','2022-02-21 21:50:09'),(74,92,'085240457855','Jl Todopuli X Perumahan Beringin permai C 9 makassar','2022-02-24 07:49:02','2022-02-24 07:49:02'),(75,93,'085697000934','BCI jl. Intan raya blok Y no. 2, rt 07/07, batuceper, tangerang, banten','2022-02-24 08:10:43','2022-02-24 08:10:43'),(76,94,'085342248975','Jl. Cendrawasih No. 261 B/2','2022-02-24 23:06:34','2022-02-24 23:06:34'),(77,95,'081340515125','BTN.GRIYA BATAS KOTA BLOK I NO.2 jalan poros Maros-Makassar','2022-02-25 09:36:32','2022-02-25 09:36:32'),(78,96,'081354549039','Perumahan Dosen Unhas Tamalanrea Jl. Prof Mattulada Blok C/7, Kecamatan Tamalanrea, Kelurahan Tamalanrea Jaya, 90245, Kota Makassar, Provinsi Sulawesi Selatan, Indonesia.','2022-02-25 11:51:13','2022-02-25 11:51:13'),(79,97,'085399569541','Jl. Pampang 2 kompleks surandar blok c no. 1','2022-02-27 03:49:53','2022-02-27 03:49:53'),(80,98,'087755534477','Btp blok ae perumahan bumi firda mas blok d 20','2022-02-27 05:05:52','2022-02-27 05:05:52'),(81,99,'087840262676','Vila Mutiara Garden\r\nJl Garden IV No 3 Biringkanaya Makassar','2022-02-28 00:58:25','2022-02-28 00:58:25'),(82,100,'082293942184','JL Jend Sudirman No 20','2022-02-28 02:18:31','2022-02-28 02:18:31'),(83,101,'08124144063','Makassar','2022-02-28 08:22:25','2022-02-28 08:22:25'),(84,102,'082291747442','Perumahan Griya Fajar Mas C10','2022-02-28 14:47:49','2022-02-28 14:47:49'),(85,103,'081339326236','BTN H BANCA JL. MANGGA BLOK M21 MAROS','2022-03-01 00:52:58','2022-03-01 00:52:58'),(86,104,'081333370002','BTN Minasa Upa Blok B7 no 17','2022-03-01 09:40:00','2022-03-01 09:40:00'),(87,105,'pawelloi75@gmail.com','Jl. P. Kemerdekaan Komp. BPS G11/43 Sudiang Makassar','2022-03-02 11:38:51','2022-03-02 11:38:51'),(88,106,'089508313265','Jalan sultan alauddin 1 no.18','2022-03-02 13:14:25','2022-03-02 13:14:25'),(89,107,'081342212322','Jl. Teuku umar 10 no. 23','2022-03-04 00:50:27','2022-03-04 00:50:27'),(90,108,'082279119615','Jl. Mesjid Jabal Nur No. 8','2022-03-04 01:52:30','2022-03-04 01:52:30'),(91,109,'085339595511','Dg. Paturang Desa Rappang Barat','2022-03-05 02:23:37','2022-03-05 02:23:37'),(92,110,'081354566880','BTN HARTACO INDAH BLOK VG No.8 RT.006 RW.009 PARANG TAMBUNG TAMALATE','2022-03-05 02:46:36','2022-03-05 02:46:36'),(93,111,'081340723359','Jl. Mustapa dg bunga no.18','2022-03-05 09:26:07','2022-03-05 09:26:07'),(94,112,'082394428980','BTP BLOK F NO. 475','2022-03-06 06:00:24','2022-03-06 06:00:24'),(95,113,'087841551736','JL. USMAN SALENGKE NO. 33','2022-03-06 06:32:43','2022-03-06 06:32:43'),(96,114,'+62817535339','JL. VETERAN UTARA LR. 105 NO. 5\r\nMAKASSAR','2022-03-06 07:59:32','2022-03-06 07:59:32'),(97,115,'081242488686','Jalan ade irma nasution blok c no 1 makassar','2022-03-07 00:45:33','2022-03-07 00:45:33'),(98,116,'082261747333','BTN Jenetallasa Blok C4/6','2022-03-08 00:37:29','2022-03-08 00:37:29'),(99,117,'082332363239','Anging mamiri H3 no.7','2022-03-09 02:36:53','2022-03-09 02:36:53'),(100,118,'085242978400','Jl Mannuruki 9 No 10','2022-03-09 02:55:16','2022-03-09 02:55:16'),(101,119,'085342961940','jalan bambu runcing lr.1 no.09 maros','2022-03-09 09:45:28','2022-03-09 09:45:28'),(102,120,'082344460103','Jl. Makkio Baji 1 No. 42 Makassar','2022-03-09 10:32:03','2022-03-09 10:32:03'),(103,121,'081343339977','Sudiang Nusa Idaman C 07 Pai Biringkanaya Makassar','2022-03-09 23:26:01','2022-03-09 23:26:01'),(104,122,'085298882008','Jl. Poros Camba No. 17 Desa Timpuseng','2022-03-11 02:17:52','2022-03-11 02:17:52'),(105,123,'08114458875','BTN MINASA UPA BLOK K5 NO 4','2022-03-11 06:14:48','2022-03-11 06:14:48'),(106,124,'82191920732','Pondok Asri 3 Blok C Nomor 18','2022-03-12 09:33:26','2022-03-12 09:33:26'),(107,125,'085399676777','Perum BPS sudiang blok C5 no 9','2022-03-12 16:33:39','2022-03-12 16:33:39'),(108,126,'08111889933','Jl. Pallangga Raya No. 32','2022-03-13 08:50:38','2022-03-13 08:50:38'),(109,127,'08888116815','jl. urip sumoharjo','2022-03-13 12:29:53','2022-03-13 12:29:53'),(110,128,'085255284234','Jl.Andi Tadde No.49 Kota Makassar','2022-03-13 14:43:27','2022-03-13 14:43:27'),(111,129,'085256485886','Dsn ujung bulo','2022-03-14 10:04:07','2022-03-14 10:04:07'),(112,130,'087726241215','Rappocini raya lr.9e no.8','2022-03-14 12:38:54','2022-03-14 12:38:54'),(113,131,'085105039168','Jl. G. Bulusaraung No. 4E','2022-03-15 05:08:16','2022-03-15 05:08:16'),(114,132,'08122004319','Jl. Maccini Kidul No.7D','2022-03-15 07:15:04','2022-03-15 07:15:04'),(115,133,'082290704320','kom balitdita 2 maros','2022-03-16 01:57:26','2022-03-16 01:57:26'),(116,134,'087897537972','Jalan Jaya I no.1324','2022-03-16 02:32:36','2022-03-16 02:32:36'),(117,135,'081944351799','Jl. Veteran Selatan 287','2022-03-16 08:44:17','2022-03-16 08:44:17'),(118,136,'085341356123','Bumi permata sudiang 1 Blok G4 No.37/38','2022-03-17 03:32:57','2022-03-17 03:32:57'),(119,137,'087757625658','Perumahan Sumbersari Permai 1 Blok J No. 24. Kelurahan Kranjingan. Kecamatan Sumbersari. Kabupaten Jember','2022-03-17 05:07:12','2022-03-17 05:07:12'),(120,138,'081355417148','Jalan Pampang 2 lorong 2 no.28 makassar','2022-03-18 06:31:04','2022-03-18 06:31:04'),(121,139,'+62811547227','Jalan Ance Dg Ngoyo 4 No. 9 Kel. Masale Kec. Panakkukang, Makassar 90231','2022-03-18 07:00:16','2022-03-18 07:00:16'),(122,140,'082345629762','Jl. Goa Ria Komp. Delta Bumi Sudiang blok C no. 20, Makassar','2022-03-18 09:29:48','2022-03-18 09:29:48'),(123,141,'08117575577','Griya utami','2022-03-18 09:40:21','2022-03-18 09:40:21'),(124,142,'08159396789','Test','2022-03-18 10:01:39','2022-03-18 10:01:39'),(125,143,'082274839575','Lahemo','2022-03-18 10:09:43','2022-03-18 10:09:43'),(126,144,'081288527290','Jl. Tri Dharma XII (dh. Wisma Mandiri 111)','2022-03-18 11:43:16','2022-03-18 11:43:16'),(127,145,'085172015004','VILLA MUTIARA ASRI 8 NO 02','2022-03-18 23:43:26','2022-03-18 23:43:26'),(128,146,'081355320496','BTN TIRASA BLOK C10 NO 6 SUDIANG MAKASSAR','2022-03-20 10:49:45','2022-03-20 10:53:59');
/*!40000 ALTER TABLE `user_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_kartu`
--

DROP TABLE IF EXISTS `user_kartu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_kartu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `kartu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bank` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_kartu_unique` (`kartu`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_kartu`
--

LOCK TABLES `user_kartu` WRITE;
/*!40000 ALTER TABLE `user_kartu` DISABLE KEYS */;
INSERT INTO `user_kartu` VALUES (2,144,'6032986066750711','2022-03-18 11:46:48','2022-03-18 11:46:48',NULL),(3,137,'6032983404267821','2022-03-18 12:31:12','2022-03-18 12:31:12',NULL),(7,145,'Flazz','2022-03-18 23:47:56','2022-03-18 23:47:56',NULL),(8,145,'0145000134846480','2022-03-18 23:48:28','2022-03-18 23:48:28',NULL),(9,146,'6032986037638268','2022-03-20 10:52:54','2022-03-20 10:52:54',NULL),(10,146,'7546050006590138','2022-03-20 10:53:35','2022-03-20 10:53:35',NULL);
/*!40000 ALTER TABLE `user_kartu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `jwt_token` varchar(400) DEFAULT NULL,
  `firebase_uid` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'fikri','fikri@gmail.com',NULL,'$2y$10$quJODLiEyPsI61z451aQO.pDmPDPiKe8GfvxG834WP6aHzTgSsO1y',NULL,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvdG9sbWFrYXNzYXIuY29tXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjQxOTczNzgzLCJleHAiOjE2NDE5NzczODMsIm5iZiI6MTY0MTk3Mzc4MywianRpIjoiYldSUENvM2w5OW5wVWpYUyIsInN1YiI6MiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.nhUfzlLygrMEW_bYJHnRmsXXYOWNOnqifJsvW4KQ3b4',NULL,'2022-01-05 15:03:54','2022-01-12 14:49:43'),(3,'fikri','fikri1@gmail.com',NULL,'$2y$10$mj6g8aEYyCmMg3skLWlE6erU3LoHhWIr0jU1pzm2eXr2k6ZV3j6ae',NULL,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvdG9sbWFrYXNzYXIuY29tXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjQxOTUxODIzLCJleHAiOjE2NDE5NTU0MjMsIm5iZiI6MTY0MTk1MTgyMywianRpIjoibDZXRUgzcDY3cnVlMmFyaiIsInN1YiI6MywicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.Vg6qfqPA_Q78oiSkEutmvbTNPi9yGVN_z3Jft34W2rk',NULL,'2022-01-06 11:11:02','2022-01-12 08:43:43'),(4,'fikri','fikri6@gmail.com',NULL,'$2y$10$tkKfpChBhpo8l7TFj6LJL.pnKD0YHGEx3KJPvTCNY88XJQlhiQ2n2',NULL,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvdG9sbWFrYXNzYXIuY29tXC9hcGlcL3JlZ2lzdGVyIiwiaWF0IjoxNjQxNDUzNzMzLCJleHAiOjE2NDE0NTczMzMsIm5iZiI6MTY0MTQ1MzczMywianRpIjoiVHRNOG1RemdEUE9zZ2hnWCIsInN1YiI6NCwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.dA8mQF_rtHKknszYJz2Srxona53sxJ9nVUUY7kAm2aM',NULL,'2022-01-06 14:22:13','2022-01-06 14:22:13'),(5,'fikri','fikri7@gmail.com',NULL,'$2y$10$guz9G5Z1DxFLyoK19pXPGOlSVGnD0PBJZX0Igwe9sGspMKfoAlrvm',NULL,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvdG9sbWFrYXNzYXIuY29tXC9hcGlcL3JlZ2lzdGVyIiwiaWF0IjoxNjQxNDU0MDY2LCJleHAiOjE2NDE0NTc2NjYsIm5iZiI6MTY0MTQ1NDA2NiwianRpIjoiOHRRbUg2ZFZlR3ozTkNGeCIsInN1YiI6NSwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.QrBQNBpP5Y6b28uaR9PCVhvnLQ5rbfE96CcqmOrZ3r0',NULL,'2022-01-06 14:27:46','2022-01-06 14:27:46'),(6,'fikri','fikri2@gmail.com',NULL,'$2y$10$8ylkp0pR3.5Q2ZOSugu.Y.VqGuDVhq/VcGXeqJ6k.35wILFfpA2cm',NULL,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvdG9sbWFrYXNzYXIuY29tXC9hcGlcL3JlZ2lzdGVyIiwiaWF0IjoxNjQxNTQwODQ4LCJleHAiOjE2NDE1NDQ0NDgsIm5iZiI6MTY0MTU0MDg0OCwianRpIjoiWXJxSENCMUxPbW9WeWIwQSIsInN1YiI6NiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.S1PIEuuZ3mLvA9y_eW8qFeGP-ViI0J0BE53XkWtZCas',NULL,'2022-01-07 14:34:08','2022-01-07 14:34:08'),(7,'user','user@mail.com',NULL,'$2y$10$sToLWqX99.RmxUY065vY1eYuAs3KIqKCf/vg5Iqv7L.aUDhh.OiHO',NULL,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvdG9sbWFrYXNzYXIuY29tXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjQxOTQ1MzQzLCJleHAiOjE2NDE5NDg5NDMsIm5iZiI6MTY0MTk0NTM0MywianRpIjoieDhvc1NUNzlYUHloanhsYSIsInN1YiI6NywicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.6tzH6ZyglN6jPUR0H8M6jJpBAYJ1SgoXCdKrVcjsxMM',NULL,'2022-01-07 16:08:36','2022-01-12 06:55:43'),(8,'Hamka endechan','hamka130385@gmail.com',NULL,'$2y$10$KNrZJnhPs8oEVlMsq7mzsOSIjoSah6HFNYD5OeI/x9NsrO2sCGAra',NULL,NULL,NULL,NULL,NULL),(9,'fikri','fikri3@gmail.com',NULL,'$2y$10$aLmXs3.JtRww32EFQaH/xeGivZaaUkS6KaP4OZOUTK5J5R/UX410e',NULL,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvdG9sbWFrYXNzYXIuY29tXC9hcGlcL3JlZ2lzdGVyIiwiaWF0IjoxNjQxODk3MDE3LCJleHAiOjE2NDE5MDA2MTcsIm5iZiI6MTY0MTg5NzAxNywianRpIjoiaWdONG5tZEpwM3QxSDNueSIsInN1YiI6OSwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.31RKsuZoF97hY72AfYQWyLTBDCtPnYQDCE_Q5ieCBOI',NULL,'2022-01-11 17:30:17','2022-01-11 17:30:17'),(10,'fikri','fikri9@gmail.com',NULL,'$2y$10$X9MAtRbPhVustOgapYotz.ISHgUfT.ABDZnk53ZY8bcvy480.h3uK',NULL,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvdG9sbWFrYXNzYXIuY29tXC9hcGlcL3JlZ2lzdGVyIiwiaWF0IjoxNjQxODk4MDY3LCJleHAiOjE2NDE5MDE2NjcsIm5iZiI6MTY0MTg5ODA2NywianRpIjoiUm5PbmtYS1o1aGEwMlNoZCIsInN1YiI6MTAsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.Eltlt-6kWMa_50RTeoJa5cHY-C4gr3i6W-jrz2WOShs',NULL,'2022-01-11 17:47:47','2022-01-11 17:47:47'),(11,'fikri','fikri10@gmail.com',NULL,'$2y$10$Stbs7/pWTvNTYgvtWwxXhudf169WG7j88ypW900.foFvm1hC3jm5y',NULL,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvdG9sbWFrYXNzYXIuY29tXC9hcGlcL3JlZ2lzdGVyIiwiaWF0IjoxNjQxODk4NTM1LCJleHAiOjE2NDE5MDIxMzUsIm5iZiI6MTY0MTg5ODUzNSwianRpIjoiMVNZekNUTWw3Zm5YeUhmUCIsInN1YiI6MTEsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.XAZxjBhAPM-Oote59JI2JoTu8jfB2ze0TJ4BipICUxs',NULL,'2022-01-11 17:55:35','2022-01-11 17:55:35'),(12,'fikri','fikri11@gmail.com',NULL,'$2y$10$cvUFmsjGMFidgM0ww1ZivupYPEenCW57rrq8OgW2PL8MhRreGCFKC',NULL,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvdG9sbWFrYXNzYXIuY29tXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjQxOTM0MTYzLCJleHAiOjE2NDE5Mzc3NjMsIm5iZiI6MTY0MTkzNDE2MywianRpIjoieWZxVUpSbkwyY2ZiYVFocyIsInN1YiI6MTIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.uSWjz4qAKx1ThZ8IZuZbAHcY6pfZ7u2AYrczx3o-lPE','qwertyuiopasdfghjklzxcvbnm','2022-01-12 03:47:54','2022-01-12 03:49:23'),(13,'Azza Fatihurrum','fatihurrum@gmail.com',NULL,'$2y$10$WAh6Fnc5BVNCY34E5xLNZuOYZUTU0EdcBWfqskTflB0m2pbnLHEZa',NULL,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvdG9sbWFrYXNzYXIuY29tXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjQxOTQyMTIxLCJleHAiOjE2NDE5NDU3MjEsIm5iZiI6MTY0MTk0MjEyMSwianRpIjoianU3NHpFUndlSUpqYW9CcCIsInN1YiI6MTMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.ABohRiz-L6C8Z181hCndG2DFzUt9uO0X5q8cWtNqBBI','uhgxBFu4fvatbBcH79Nr025bKj23','2022-01-12 05:57:42','2022-01-12 06:02:01'),(14,'fikri','fikri12@gmail.com',NULL,'$2y$10$ztam4fNPGDlGZbsismfMg.wFkFR4obZoDCwoGCuC9jBbtVaTUM2Nu',NULL,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvdG9sbWFrYXNzYXIuY29tXC9hcGlcL3JlZ2lzdGVyIiwiaWF0IjoxNjQxOTQyMzkwLCJleHAiOjE2NDE5NDU5OTAsIm5iZiI6MTY0MTk0MjM5MCwianRpIjoid1BCU2Vkcmg1bUZjNVNsUyIsInN1YiI6MTQsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.C9M8pdn4DvdQ3y5cNueKzkrLFcthJMciwMagvJafUXE',NULL,'2022-01-12 06:06:30','2022-01-12 06:06:30'),(15,'fikri','fikri14@gmail.com',NULL,'$2y$10$zvbA8zexD4Jt3.Y9P8im3.0cq.PEmUWTU9LBwoHQCtfeATqaHDCQ.',NULL,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvdG9sbWFrYXNzYXIuY29tXC9hcGlcL3JlZ2lzdGVyIiwiaWF0IjoxNjQxOTQ0NDU5LCJleHAiOjE2NDE5NDgwNTksIm5iZiI6MTY0MTk0NDQ1OSwianRpIjoic04xQkdSanlPdHBLUWRHaCIsInN1YiI6MTUsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.YiXVuW4RnnWSvYVrwbgYKyjQe-li7EIbI_DjVrHVUaA',NULL,'2022-01-12 06:40:59','2022-01-12 06:40:59'),(16,'Fikri Azis','tanyafikriazis@gmail.com',NULL,'$2y$10$.JYNJJA08VVtVasAL14A/OfpcCEWvnqeT5D7eyFckXB7iW0e/jZsS',NULL,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvdG9sbWFrYXNzYXIuY29tXC9hcGlcL3JlZ2lzdGVyZmlyZWJhc2UiLCJpYXQiOjE2NDE5NDQ3ODUsImV4cCI6MTY0MTk0ODM4NSwibmJmIjoxNjQxOTQ0Nzg1LCJqdGkiOiJ4a1pDTUhyQmZBckhXbldBIiwic3ViIjoxNiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.Zo4qWBr0_rFJtmFAto0TiU1VZuECG6pt3eSUulcNV9w','jGvLcOX5eHg9E1c25oM8ZEt34TD3','2022-01-12 06:46:25','2022-01-12 06:46:25'),(18,'Edward Hari P','edopuro@gmail.com',NULL,'$2y$10$Tz3Yz3h9EOYMYdV2G8dyiO8YQ12wS7.Yt6xxzONXcNd3pJjeMrJMu',NULL,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvdG9sbWFrYXNzYXIuY29tXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjQyNzQ0MzUwLCJleHAiOjE2NDI3NDc5NTAsIm5iZiI6MTY0Mjc0NDM1MCwianRpIjoiY2plMGRGcklkaXNkTjB2SCIsInN1YiI6MTgsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.fFQ2uIT_GBUYA3ExWE6Gy3kf0LMlSjVGP9qZRXietkI',NULL,NULL,'2022-01-21 12:52:30'),(19,'FikriAzis Dev','fikriazisdev@gmail.com',NULL,'$2y$10$2I7JFjaol11SUEH3ANP7pO2dJD7gJB86iysStLHw8RELGE2aQakBi',NULL,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvdG9sbWFrYXNzYXIuY29tXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjQxOTg4NDU4LCJleHAiOjE2NDE5OTIwNTgsIm5iZiI6MTY0MTk4ODQ1OCwianRpIjoiRUJ4QUxweHBObnNuYUlGVyIsInN1YiI6MTksInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.cMD_jBy5n94ULc5T8_hbP0l75AF4muH4sydUSvmlM3o','HRzbtIG2gWQhzaxWUlSd4NiMClx2','2022-01-12 14:59:35','2022-01-12 18:54:18'),(20,'Kizya Pay','kizyapay@gmail.com',NULL,'$2y$10$qZa/lX64j33nDC5PojoRnuO1o9NXM5wFLqjFHDHw.avc6bZauBb.q',NULL,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvdG9sbWFrYXNzYXIuY29tXC9hcGlcL3JlZ2lzdGVyZmlyZWJhc2UiLCJpYXQiOjE2NDE5ODg0MzYsImV4cCI6MTY0MTk5MjAzNiwibmJmIjoxNjQxOTg4NDM2LCJqdGkiOiJMZVdXbVdYaTd2YnI3WkZ5Iiwic3ViIjoyMCwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.aZzZVkR21-wXmvkz1gyFfP1xjMWqWS7CAcA5Lu2NDw8','Ssj0xM8nt3NA6h9UePGo1gsSVB53','2022-01-12 18:53:56','2022-01-12 18:53:56'),(21,'test api register google via postman','fikri100@gmail.com',NULL,'$2y$10$rAXt8aeofuinGVGhkrVjweC3auu837udfcb3Pf2N.AfDlQMyjWvzq',NULL,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvdG9sbWFrYXNzYXIuY29tXC9hcGlcL3JlZ2lzdGVyZmlyZWJhc2UiLCJpYXQiOjE2NDI0NzMzMTAsImV4cCI6MTY0MjQ3NjkxMCwibmJmIjoxNjQyNDczMzEwLCJqdGkiOiJCbjVxUG1SWXE2QTI4Z1BEIiwic3ViIjoyMSwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.-dUlixcGB11P63_cSivWoCy8RU6mde9vsjjHY14d_H4','qwertyuiopasdfghjklzxcvbnm','2022-01-18 09:35:10','2022-01-18 09:35:10'),(22,'Awaluddin','wawan101190@gmail.com',NULL,'$2y$10$XizH4oT8GBJjIBmmbSxHSezeo0SEKpZmqXbGfm9Q5LOsKcq.W09mW',NULL,NULL,NULL,NULL,NULL),(23,'Kahar','k4h4rp@gmail.com',NULL,'$2y$10$nqeTChhMSkafrmnZoA2XqOKCVHQJHqDuGYbK3wcxKHa93tvkIbmca',NULL,NULL,NULL,NULL,NULL),(24,'Maximilian Leon Gartner','maxgrtnr7@gmail.com',NULL,'$2y$10$KfEo7lLkY5hm48tRfRgZpO3ZTNK9PDtXsevajutfdY5YepMMH3bIe',NULL,NULL,NULL,NULL,NULL),(25,'Imannisa Sofani','imannisaes@gmail.com',NULL,'$2y$10$YpXUEGeK7blERHb.A9Q0R.wljlu8u1MCBvl0q5J0sVhhMmCS/t39.',NULL,NULL,NULL,NULL,NULL),(26,'Khusnul Khatimah Jauharuddin,S.Pd','kkj.belieber@gmail.com',NULL,'$2y$10$U0PPv0EWGOTwkXi8GpLZAeJNygqKRQRGy884kZFPMHw6ua/wof53e',NULL,NULL,NULL,NULL,NULL),(27,'Hartawan Widipuja','hartawanwidipuja1986@gmail.com',NULL,'$2y$10$srQsLn7SFaDz34C2XLKYPO2SjgerkXoOglIgJNhZqrB9eDPfi5tNi',NULL,NULL,NULL,NULL,NULL),(28,'Nur Chaerani H Amri Haiya','xavierxanderia@gmail.com',NULL,'$2y$10$Pi5vUV5f7sDQv4gdH.l/nO0tHmNJnZ82eKueV.5sNgESKOKbpwY7q',NULL,NULL,NULL,NULL,NULL),(29,'A. Muhammad Raihan Zaky Samudra','andimuhrihan002@gmail.com',NULL,'$2y$10$QjBVdI4ya30aXTafXc06reSNpBJbTIpdBieUILhINqCTCzYVWvdzu',NULL,NULL,NULL,NULL,NULL),(30,'Delcaria Amir','delcaamir12@gmail.com',NULL,'$2y$10$v6k0V7zeDivEaZjQGHeqPe3MzHjqDm39XqmaeiAu3/RS77DMVBaCu',NULL,NULL,NULL,NULL,NULL),(31,'Rizky Nuladhani','nuladhaninuladhani@gmail.com',NULL,'$2y$10$A5yNJLMr.E3J5UalcgfjjeUl7r3ZzDQNjpZBeoBczPqNsi1ypVRRu',NULL,NULL,NULL,NULL,NULL),(32,'Reinaldy Fargo','fargoreynaldy@gmail.com',NULL,'$2y$10$8.dFmx4jlhgY6JtPTRJuXOUI1PrVZ4GssQrchohXn7umlBnSwJ.WG',NULL,NULL,NULL,NULL,NULL),(33,'Nurdin Pawelloi','paelloi75@gmail.com',NULL,'$2y$10$Dhg8SQuha4tCfeEa.8TABOIyGKdCQXz9o/XJ5OIneP5iuikRM9QEW',NULL,NULL,NULL,NULL,NULL),(34,'Minarti muslimin','deje.susan31@yahoo.co.id',NULL,'$2y$10$mO4RmN77Aqwa3bmQVXwGFuMQS/wGrUMSDaUBwLQvEz9R9XKfza1my',NULL,NULL,NULL,NULL,NULL),(35,'jumaedi','jumaedi.djaboe@gmail.com',NULL,'$2y$10$ukQywlM6FQq1mogt89Gb9epmNSFj0oReqsZdGV03SJ3NnJ3GMixpi',NULL,NULL,NULL,NULL,NULL),(36,'Imran','Imran.sinja193@gmail.com',NULL,'$2y$10$VOkrc2fZWf1jJD2DNnaZaOFXjHftNQFmt3NPY1YL901A2vnvoJgSS',NULL,NULL,NULL,NULL,NULL),(37,'Nur Fauzan Najib','nurfauzannajib@gmail.com',NULL,'$2y$10$KFUEtvIdilQw/ZnJSiTiq.nhLCDMfjaDAvDSlljzrDW7v/0G3Smk.',NULL,NULL,NULL,NULL,NULL),(38,'Nurul Fitayana','nurulfitayan@gmail.com',NULL,'$2y$10$qzSY46mmt582hVyOm0uOUeitsvSZLgJ8P4V0FsESnXQf933iBvr/m',NULL,NULL,NULL,NULL,NULL),(39,'Edy Parawanto','edyprawanto.ep@gmail.com',NULL,'$2y$10$xx9eucGUfqwbS84vhjaeZ.7eayY/2t7ePuWKVy/0NTsU8Nfr.5N7.',NULL,NULL,NULL,NULL,NULL),(40,'M ZULKIFLI HM SE','bangijulbisa@gmail.com',NULL,'$2y$10$0/z44pRUs8S9PK1i0Nq1dOfEsEc.69CqYlFJhDpuKaBmlYigvveZW',NULL,NULL,NULL,NULL,NULL),(41,'Reqi Reyzaldi','reqireyzaldi013@gmail.com',NULL,'$2y$10$jk/yphuVXbdD/RV3fBZgEusgWJOl48XRxQEtJKHJSY4YpRpmFqCJW',NULL,NULL,NULL,NULL,NULL),(42,'Syaiful habib S.Pd','syaiful0158@gmail.com',NULL,'$2y$10$cGi4k32jKlSQnZjkCqDItebiTX93FrIzPb8o.kjuUvtMdaDHnlSNq',NULL,NULL,NULL,NULL,NULL),(43,'Janiarti','janiartisiola@yahoo.com',NULL,'$2y$10$vTTXc6PHGYox.njOdCMuP.jfXtmsUXOvxioG9JDa.SlkLWiG8e6wq',NULL,NULL,NULL,NULL,NULL),(44,'ZULHAJIR HAMDILLAH','bhobo2903@gmail.com',NULL,'$2y$10$KUARaS3fhuVbxiqPGR5K3.BrMnQffejD52Vb5HRqmgwOVLE1pBpEa',NULL,NULL,NULL,NULL,NULL),(45,'Abuhuraerah','hera_ithing@yahoo.com',NULL,'$2y$10$aZf4QX8/NDp9QAMFc3vCL.WNirtnGVLJ6V3yuaEeOqxVf.XajhWKG',NULL,NULL,NULL,NULL,NULL),(46,'SARDIN DAMIS','sardin.damis@gmail.com',NULL,'$2y$10$Le1xJOU8VTQE/NJOjJEyBefyqHO2Wgd6PAD.iezmKngTp0ZpuX2Bm',NULL,NULL,NULL,NULL,NULL),(47,'Hendra widjaja','hendramtc81@gmail.com',NULL,'$2y$10$giTHOLczqsa1MSdELxzFkevdD91jKt32DmJH//IXcofLM8Ke0p9.G',NULL,NULL,NULL,NULL,NULL),(48,'Irwan','Iwanrentcars@gmail.com',NULL,'$2y$10$5XydyLKDuOWRbRiK3/FReOjpmJanDuUMOIr.7jIrW3uu7UrmDQQ0q',NULL,NULL,NULL,NULL,NULL),(49,'sultan akbar','akbar.yamaha99@gmail.com',NULL,'$2y$10$rkAuK6fNCpaFrScuFPFsxe6gTcdEwVCB04lUUnjJPsHAC5PfF96y2',NULL,NULL,NULL,NULL,NULL),(50,'Riska','Riska.nurdin2203@gmail.com',NULL,'$2y$10$JzzR3bmVnkyQ8GDsx1c2NOBN4DTCxXQ3l1WdXsksl3y7o5ZbzrNHm',NULL,NULL,NULL,NULL,NULL),(51,'DIAS RADHA','semriantipaladan@yahoo.co.id',NULL,'$2y$10$fQvZVl.E5.Kbvkq6ZgoIMuxHwELxEXQh9q8lxaniXPMWyt5mxh9bG',NULL,NULL,NULL,NULL,NULL),(52,'Anwar','anwarkadir70@gmail.com',NULL,'$2y$10$A9vz6x7DIDDZ7hMvWtxBVOqzFulgCPY.mPrkQTnGL6T40CALk1F5a',NULL,NULL,NULL,NULL,NULL),(53,'HEEYANTO SH','ryanttnt2002@gmail.com',NULL,'$2y$10$XTeElNdUw6a1tfPJ1zFdfOrcL.GRQ.OGVGQrqKhzd/iekFOE83iYi',NULL,NULL,NULL,NULL,NULL),(54,'Seriusman Waruwu','seriusman.19034@mhs.unesa.ac.id',NULL,'$2y$10$1F2lw15abl8JER/IyzyAkOyQAMcrYouvjK7f8hXMFKk665F7a9loC',NULL,NULL,NULL,NULL,NULL),(55,'Agus Saputra','a1.90kun@gmail.com',NULL,'$2y$10$8DpaspUyrQLhe1/yyeaYO.NtPEXIU6l7TGkaYIf6JnBDnta4rjwfm',NULL,NULL,NULL,NULL,NULL),(56,'mohammad syakur ridho','dr.mohsyakurridho@gmail.com',NULL,'$2y$10$h66MAtP5Ql5QK4Lo3ohT7.E3w2ab384MjoAKiPJ3eYCiGCCUsugr.',NULL,NULL,NULL,NULL,NULL),(57,'Nurul Ilmy Hidayah','nurulilmy88@gmail.com',NULL,'$2y$10$yAHyRZZw1lE9oh5lYRo.a.84YNTMi0eFVbp/pFIwuvxknx60qRICC',NULL,NULL,NULL,NULL,NULL),(58,'Sawaluddin','sawaluddinhamid7@gmail.com',NULL,'$2y$10$kKu8wUK.1dsOH8GcAbZi9uR8H3.VwRHhoDThjn1q1ngr6AE8pGyC2',NULL,NULL,NULL,NULL,NULL),(59,'Arfah Darwis','arvadarwis@gmail.com',NULL,'$2y$10$rOqZuXcYxpt2ztSMUNTwYunV0GAd830HWNxY/NzlotzMv0Eee6i0O',NULL,NULL,NULL,NULL,NULL),(60,'Annisa Feliana Putri','annisafelyana30@gmail.com',NULL,'$2y$10$CyKzlR72KDAyBq3m/6kvR.b/tscaDi1JXrdPySLckmtgmxuEGWnKW',NULL,NULL,NULL,NULL,NULL),(61,'Zulfiana S Akib','akibzulfiana@gmail.com',NULL,'$2y$10$yO912qHgnHb1kyBAIQOtdeKU2Clz2hRyk775AQaN.Uenm5PxRee5i',NULL,NULL,NULL,NULL,NULL),(62,'MUSTAFA','topemakassar@yahoo.com',NULL,'$2y$10$O9dkmJLARTGMVX7NtGfBDekIGEqzPn0qEgCbDBPZVnkitaIA4DJ8u',NULL,NULL,NULL,NULL,NULL),(63,'Arman Jaya','manggalung.arya@gmail.com',NULL,'$2y$10$ySLTPSO402CwXEJh.YmRP.MRvEruFn1ixSnjELEjYI5osD/.NvzfO',NULL,NULL,NULL,NULL,NULL),(64,'FERDIANSYAH','fferdiansyah1986@gmail.com',NULL,'$2y$10$1h5sKtiydwDYxN/zj5qWRudErIjUhA447WpvrYIhNeGqBThzpe.ua',NULL,NULL,NULL,NULL,NULL),(65,'Shintya Dwiarisa Puspita','shintya.puspita30@gmail.com',NULL,'$2y$10$0gch0zATnZsIVJU2CbDEf.GrfBNAKjJbNWKEfBICq6UkmZC8VhMwa',NULL,NULL,NULL,NULL,NULL),(66,'Martoyo','martoyohaidar.mh@gmail.com',NULL,'$2y$10$5FXyZ7JaYdYimDPeJ2fA6e0LMmcZZ7mKdUYuWGKkBJSzyhFRDvIla',NULL,NULL,NULL,NULL,NULL),(67,'Bryan Davis','davis.bp@gmail.com',NULL,'$2y$10$.BnSwCeI9O93F4BVPBah2.xCrPAzX/nIwdRCKdWrDz.06EyCIDZGu',NULL,NULL,NULL,NULL,NULL),(68,'Hazel','Hazel_29@yahoo.com',NULL,'$2y$10$TcJuMn2gpr32vdJaaGZQaO4NSL48gtuYww6pbIdEJYbsXBp5cl2LC',NULL,NULL,NULL,NULL,NULL),(69,'Markus Taba','mark.stelk@gmail.com',NULL,'$2y$10$hediqen3HS4ykorhJZJ4.eZWDYrWnZHTLEmLg4X9n99sdyeosBUWi',NULL,NULL,NULL,NULL,NULL),(70,'Ilham Nur Putra','ilhamnp577@gmail.com',NULL,'$2y$10$DhyTD9U06aXWW2PAtWv2SukfOReqaptDDt5aTtoh7vX0XJVX5BB22',NULL,NULL,NULL,NULL,NULL),(71,'CENDHIKA LARASSAYOM ESA, S.T','cendhika.esa@sig.id',NULL,'$2y$10$QjoXoxbe10O0DLKYQqRRfegfWv1ONmoMfC7qpOoCUmbk13zLei2LK',NULL,NULL,NULL,NULL,NULL),(72,'Ady Sutono','adysut@gmail.com',NULL,'$2y$10$jNADBUi3dDcMIKI4MJsAdeszuwbY4qqKuESBGTUuIysS0637jBuHq',NULL,NULL,NULL,NULL,NULL),(73,'Sopyan Haris','sopyanpokphand@gmail.com',NULL,'$2y$10$1uAbQZ24Wvd3iuxftDxKBO1UYtVnsYct3jEUtx5Er//XOrca5z/o6',NULL,NULL,NULL,NULL,NULL),(74,'Sri wahyuni moidady','swahyunidahlan@gmail.com',NULL,'$2y$10$4DWKoNQjziXXYute3cx.mOS6Mm7GOehEvSPGlP918kC45petXmnSu',NULL,NULL,NULL,NULL,NULL),(75,'Surianto Ciayadi','suriantociayadi@gmail.com',NULL,'$2y$10$TAfsls/MosTClkCSPJGpKuVgffn7pGEriaMe3zGqfm6lmrGxa93ES',NULL,NULL,NULL,NULL,NULL),(76,'Jodiana Lebang','jodianalebanglebang@gmail.com',NULL,'$2y$10$lJzCWg8.iowy7dOHycBgoOXl7mLvLyWMihGB4kW1kKJj3a2wnizUe',NULL,NULL,NULL,NULL,NULL),(77,'Achmad Fauzie','ojifauzieoke@gmail.com',NULL,'$2y$10$klqpiRA4Rjva.PKWFIl3h.hsZBNPR2vqw843aG3JkBxHLwTergjwu',NULL,NULL,NULL,NULL,NULL),(78,'Tamrin S','tamrin67@pertanian.go.id',NULL,'$2y$10$5ulco0tulXbuIYLXRTEmB.9tZ3d4fHuM3auGOq.K50UgD4SBosCwW',NULL,NULL,NULL,NULL,NULL),(79,'Mulia sahtia','tiya.0504@gmail.com',NULL,'$2y$10$2nfGFmnxS4Oqz9nUCmD4q.f4JDfaACKJQB/3Cs5I3qzf5HsK9et7i',NULL,NULL,NULL,NULL,NULL),(80,'Sunardi Sjamsuddin','makkaraengobu5@gmail.com',NULL,'$2y$10$K/Jakwg2utoJZ6fJ3iHqFuBw7L2V0GgrMfo48WlN/COXv.cDcTuDC',NULL,NULL,NULL,NULL,NULL),(81,'RAKHMAT ALAM','rahmatalam91@ymail.com',NULL,'$2y$10$Lb1PMTHpM26CxMNe/lWSquij5BDCR5qDkls.lJ3Cr44Kt6kHIbWK6',NULL,NULL,NULL,NULL,NULL),(82,'Rauly Rahmadhani','raulyrahmadhani83@gmail.com',NULL,'$2y$10$.V0gFeHxoXPUi8hP7FsEluI7dAXQtsomHUbBjC3Cq7uZh2wmRnQqW',NULL,NULL,NULL,NULL,NULL),(83,'Novryansyah','mbcimakassar@gmail.com',NULL,'$2y$10$zI.JM1l9nemrtw6IKYRSTeiZgqBnvARXtEQeEnhtALB7Pf3UeRWr.',NULL,NULL,NULL,NULL,NULL),(84,'Nurul Azmi','nurulazmisyahril@gmail.com',NULL,'$2y$10$ODFmQUXqA8.FCrG3qSUtieKDY5Ik9megomQGJv/ClH9YaqJsizC1e',NULL,NULL,NULL,NULL,NULL),(85,'Novalista','hakimnovalistaratna@gmail.com',NULL,'$2y$10$88i1vIcfNxSdmyk2tMkV0..dXUKOHsZu2aokEOEpudzgnTBp8rJ2.',NULL,NULL,NULL,NULL,NULL),(86,'Gilang Tanda Bulana','gitanbul98@gmail.com',NULL,'$2y$10$b63pKxo.YI6xJiu3e5gEFukP.BqxSVmwYZV89OYbiPXj.5e/g9IBK',NULL,NULL,NULL,NULL,NULL),(87,'Dedy Witigna Sucahyo','dedywiths@gmail.com',NULL,'$2y$10$IMEpbw8yZgrsXmZKEpOuaeBMY/KGdsoLt4ZwzfhLhfp3i0bcPY6ve',NULL,NULL,NULL,NULL,NULL),(88,'Anggareksa PS','anggareksaps@gmail.com',NULL,'$2y$10$Xv/m9iwX8YPftxiLElnwwuGm.hQRHbPRI6Y4ZNIR1yUsJogz2NgeK',NULL,NULL,NULL,NULL,NULL),(89,'Muh nur alamsyah','muhnuralamsyah147@gmail.com',NULL,'$2y$10$ilggwdtmLRrl8T74w424M.T6OHhfofBF9YbEE1pdVv2xm/hnVq/3G',NULL,NULL,NULL,NULL,NULL),(90,'Dafrid Cahyadi Arifin','mr.dafrid@gmail.com',NULL,'$2y$10$0fR/82tkuBXZlZDeQ5I0WeR.LBfwAFWgy8pruz8N7xY4mOqaMsVqi',NULL,NULL,NULL,NULL,NULL),(91,'Yuli nurnaningsih','yulih76@gmail.com',NULL,'$2y$10$Ml/SZSkwzpqqNUQ4Tg7e1e.6lHRsumsdkn2GG3jpFuHWxU/A9YyyG',NULL,NULL,NULL,NULL,NULL),(92,'anis bamatraf','bamatraf_anis@yahoo.com',NULL,'$2y$10$pCcbt0hmja.51M9DGIjsiumd.D2RkvrTOmCVm6AfdeJFZdWb8dVLG',NULL,NULL,NULL,NULL,NULL),(93,'Viencia Saputra Wijaya','viencia90@gmail.com',NULL,'$2y$10$mp081wDnIeX82jc7oYIATeC0zFl3jL2Fx9IxXHKRs40FPOE3fRtpi',NULL,NULL,NULL,NULL,NULL),(94,'Gusnidar Suryam','hafirshandiann@gmail.com',NULL,'$2y$10$j1qLOBF.kO8iIBpUFiCNHemuZRLhO75U/gIa8dcG01LN8OXcD8.1e',NULL,NULL,NULL,NULL,NULL),(95,'ANDI MUHAMMAD DJARCHAMAD.R','andiumhammaddj@gmail.com',NULL,'$2y$10$YQ69oimq4ASDNKXiRzvg4.07/R4yJnc1MVdNKiC1pxOHwMScYBEOW',NULL,NULL,NULL,NULL,NULL),(96,'Erika Ainun Zakinah Ikhsan','erikaikhsan@yahoo.com',NULL,'$2y$10$uGeex3YpSPPvwGEvvKdRfO0NhVmDSeyUmOwGspxRNniGehisAQiza',NULL,NULL,NULL,NULL,NULL),(97,'Widyasrini anas','widyarhams@gmail.com',NULL,'$2y$10$zKkjMw9CAQmVCthWb2UgKORsDEgZ7eatOo/GHBymkZprlQ66eDLoG',NULL,NULL,NULL,NULL,NULL),(98,'Jumardin','jumardin07@gmail.com',NULL,'$2y$10$JadypCsVgEhfVCByVShJ7eX3vXv0G/Gqk121ZLbiy3gWptBtKHDyq',NULL,NULL,NULL,NULL,NULL),(99,'Ahmad Rossydi','a.rossydi@gmail.com',NULL,'$2y$10$8SKrKLB3tyffA/1RQ6wBRuhy/mxo0yfMFjX9wIAwRT4qVHZ/smzx2',NULL,NULL,NULL,NULL,NULL),(100,'Muhammad Ravly','muh.ravly@gmail.com',NULL,'$2y$10$/C4.SsMM5K01IceNbQTSGu/OaaYEQbDf.ngQpHdRkkPb15QeckJiC',NULL,NULL,NULL,NULL,NULL),(101,'Yuli Nurnaningsih','evalap_batangkaluku@yahoo.co.id',NULL,'$2y$10$4FACj5.nbUVGBEYi7TfQ3eRR2QVnEPvPbOJaoQWf2EeFS7f5/bYWG',NULL,NULL,NULL,NULL,NULL),(102,'Brillian Yogi Aditama','brillianyogi18@gmail.com',NULL,'$2y$10$8Sg4U.vTkFa5luHPkJrIweWcGOtVXFr/c2uonvCr4S2DQlshVKwo.',NULL,NULL,NULL,NULL,NULL),(103,'ADIL','adilstelk1085@gmail.com',NULL,'$2y$10$MYm65G/LS88RCJXYBWQ2IOc9Aw8Sd7wRVXQawuifzuB5KM8Apo.CK',NULL,NULL,NULL,NULL,NULL),(104,'Harry Setyadie Saleh','setyadieharry@gmail.com',NULL,'$2y$10$duSu.X0vE00SnZClJiZqBO.OGt1CXm0CSjy8kaARHy7xdQSS0DU2O',NULL,NULL,NULL,NULL,NULL),(105,'Nurdin Pawelloi','pawelloi75@gmail.com',NULL,'$2y$10$YHDpWOFIURUkF.1LOkIN4OzMMeprh5M9aVa/KH8JWdDFFAIkylRxK',NULL,NULL,NULL,NULL,NULL),(106,'Asmin Juniarti','asminjuniarti@gmail.com',NULL,'$2y$10$PINb8vG/0P7IIkgddm8RBe7rZ915z9roD.9nsogP3aDCKPojfxUmu',NULL,NULL,NULL,NULL,NULL),(107,'Erwin hidayat','erwin4444yu@gmail.com',NULL,'$2y$10$AtagPrFQFGrDjZ.NRN5brupmSaK92rvLN8cY8osWiPQoFD2MkEfXG',NULL,NULL,NULL,NULL,NULL),(108,'Hatta','hattaram1@gmail.com',NULL,'$2y$10$6p.huzOWPmG7avz4wK31GesRZarrLl6fQPvUM41bBuf204b2vGpMy',NULL,NULL,NULL,NULL,NULL),(109,'Andi Ibnu Habib','andiibnuhabib@gmail.com',NULL,'$2y$10$difj6bXDcx.JxT0NdA6PCOGWjURX1DQRTm6zLWhxJjFZfIXeV87Te',NULL,NULL,NULL,NULL,NULL),(110,'FERRY JULIANUS MELLO','Ferry.Mello@gmail.com',NULL,'$2y$10$PqJ3nBnNJSmxTYe43hN8G.Q15LiV.LO.FOInrga.MneBF5SFuoeQ6',NULL,NULL,NULL,NULL,NULL),(111,'Chandra dwy puspita fryanti','chandradwyp@gmail.com',NULL,'$2y$10$Se0ougzIfk4NJBQ.7RbhYOtL5TPUaORMQaYfV6RvE9YG12rc9iZR6',NULL,NULL,NULL,NULL,NULL),(112,'Jessica Gabriella','jsscgbrll@gmail.com',NULL,'$2y$10$Xb1tidPfOobcLhlRrUW5leIOeI4oGEwIo8G6c2ssiOI0WuYb/1pne',NULL,NULL,NULL,NULL,NULL),(113,'A INDRAYADI RAIN','a.indrayadirain1992@gmail.com',NULL,'$2y$10$Ygf/aD9O7cxyYTB2gE4QfuMXoYJZcYRWMxDZzmQsajYCQVH6f8TS6',NULL,NULL,NULL,NULL,NULL),(114,'WILSON. A, SH.','qmax27@yahoo.com',NULL,'$2y$10$KfXcMWX9nyB23z.z1cJcSOKv48JzNwSNahPOilD3tOa0EeM1zRuAC',NULL,NULL,NULL,NULL,NULL),(115,'Mutia Nurul Munifah','mutianurulm@gmail.com',NULL,'$2y$10$8an4UNxXGYJejVWflrtOTOux0p.PR6b6Ec8qQ3Flz771KoDJPiZBi',NULL,NULL,NULL,NULL,NULL),(116,'ABD WADUD ASSEGAF','abdwadud9@gmail.com',NULL,'$2y$10$TnEHPHfBeHY89aqU3F548.HIOkLtwFcgWNBQojWx0EmFjO3XVs4Pu',NULL,NULL,NULL,NULL,NULL),(117,'AN TONI SIH','antoni.sih@yahoo.com',NULL,'$2y$10$KRFKjbo7u5o1nupvl6SXBe.BYMqfomk8wNpqk6ag2O89oYFtAvUHW',NULL,NULL,NULL,NULL,NULL),(118,'Indriyani','indriyaniisrini@gmail.com',NULL,'$2y$10$qnsaZWlkUUx2qknfd/a8Ku2yWmBntW9forWA/qPN6YbQGJw5knsMC',NULL,NULL,NULL,NULL,NULL),(119,'rahmat tahir','rahmat020574@gmail.com',NULL,'$2y$10$Asxro1GfocPzMvZfUZmaJ.Zs9obvlXmE45rSm9XU3bF9jhuUUIHHq',NULL,NULL,NULL,NULL,NULL),(120,'dr. Muhammad Syarif Eddy Murad','msyarifem@gmail.com',NULL,'$2y$10$eufMsRRYDFCEjxDQz5IuKu6mpci5bpCNIG5n8VG5qhT/VmHyRku5y',NULL,NULL,NULL,NULL,NULL),(121,'Hasrul','rhoelch@gmail.com',NULL,'$2y$10$VEfDBtYp8Jsq49MiqSksoOuU6EfQzNodBmTqo8vW0yo7YqcjopKdq',NULL,NULL,NULL,NULL,NULL),(122,'Muhammmad Arif','arymuhammadarif@yahoo.com',NULL,'$2y$10$ngtdzN2DV21bbE2krOnNseOghJdZGFzhFSt18vu.cA1ZERKtG61c6',NULL,NULL,NULL,NULL,NULL),(123,'Idham','idochanjapan@gmail.com',NULL,'$2y$10$9Ym4iO9K6GXJn4XXUv6YJO1AVgomelRpHkUnhfsZxDPmQ.cZLDCP.',NULL,NULL,NULL,NULL,NULL),(124,'Andi didit Haryadi Syam','andididit@gmail.com',NULL,'$2y$10$21OfiAetStg6ns20uEDQz.zLegSBiHE6Oi.JaiGTONHNnA1ct1Tie',NULL,NULL,NULL,NULL,NULL),(125,'Muhtadi Bidinillah Al hamdani','muhtadibidinillah@gmail.com',NULL,'$2y$10$xsrzHvtKsjablgFS/uZSq.BO1GnafAN7UP.9p27ujDol66HkTMlyS',NULL,NULL,NULL,NULL,NULL),(126,'Adnan Hidayatullah','adnandbr30@gmail.com',NULL,'$2y$10$rYDXlVOfjWXlEpV65y9q5OqJdh6oElFNB4dWqjvnfNQ3YncbebuQq',NULL,NULL,NULL,NULL,NULL),(127,'Awaluddin','awaluddin.hamsa@hotmail.com',NULL,'$2y$10$iVLTRWLGW/gQ3pVTC5eKW.lt1Q.NJXmGnGV3sq3cnzJxqx.utGJa2',NULL,NULL,NULL,NULL,NULL),(128,'Ricky Andhika Karumpa','elradjamotovlog@gmail.com',NULL,'$2y$10$kpUOeIDGeihfJ41MeeP3aewCJgvGu5JFCcF.pQfHDQ0usNneJX7pG',NULL,NULL,NULL,NULL,NULL),(129,'Andriani','andrianinasir2@gmail.com',NULL,'$2y$10$3XFqFKLHBOq8c7wVkPwt4OF21qEvU0iYeCh9e.or0KUe90mfSffxq',NULL,NULL,NULL,NULL,NULL),(130,'Andi asfriani mangopo','andiasfrianiii@gmail.com',NULL,'$2y$10$i2v/FZe1IxZW31GdizWDD.M9zKt/z81Ym5Ni307diV7JQ2wouYC.q',NULL,NULL,NULL,NULL,NULL),(131,'Marvel Ramli','mr.herbalifeinfo@gmail.com',NULL,'$2y$10$LqsEHTFDpI9sdo3Wup/yQOJhS5XZtq5faWvWjweNFR2zf7qmaWuM.',NULL,NULL,NULL,NULL,NULL),(132,'nursyamsiah','nursyamsiah19@gmail.com',NULL,'$2y$10$V2ETeaQGERsvaWncBiL3tuKO8SrYXXoh9ILIluOCfbtLkbvh7HosO',NULL,NULL,NULL,NULL,NULL),(133,'ashari natosusilo','asharints22@gmail.com',NULL,'$2y$10$s7MxindhhWjbRDc/CSukueaUIwgRcMSC.hQ0RFea1xODcoxmz7kjm',NULL,NULL,NULL,NULL,NULL),(134,'MUHAMMAD HENDRA FATONI','muhammadhendraf@gmail.com',NULL,'$2y$10$rfZo3TKJyB4/j18AvUXgIum.OqdWxTjgkt.SeacqUM71K6NoXpk0W',NULL,NULL,NULL,NULL,NULL),(135,'Hendra Ujiman','hendra.ujiman@yahoo.com',NULL,'$2y$10$Bs0n.6gG878zW/VhH4KCTe/BVWDrQk7qeWdI6SgqBIt6/axvP0i8m',NULL,NULL,NULL,NULL,NULL),(136,'Ashabul Wahidhan Wahyuddin','ashabulw@gmail.com',NULL,'$2y$10$Ju9Mhn22lacjtRoPoXFLLOmKavdFLlc3DjUNcjLU1dEaxpFU6iZM2',NULL,NULL,NULL,NULL,NULL),(137,'Roy Widhi Dwi Firmansyah','roywidhi@gmail.com',NULL,'$2y$10$877uLsdPsNI7YRH1PJV7nec4CF.OzT5J4b.mHfubVv.zIEHCXqAu2',NULL,NULL,NULL,NULL,NULL),(138,'Eunike Joice Bakker','joicebakker.monalu9921@gmail.com',NULL,'$2y$10$5tIegfVJNPqW3ilR9yY/yebWiCFmuEyF7oMQLAsKC.KLXtkTUSsOW',NULL,NULL,NULL,NULL,NULL),(139,'Lukman Hakim','lukmanhakim.idris@gmail.com',NULL,'$2y$10$2m9Y/B6Vel843CXH8DuCoOlLXgu938EiEHPqiS6qnwWN.i.Faj9H6',NULL,NULL,NULL,NULL,NULL),(140,'Diah Sri Hartini','diahsrihartini@gmail.com',NULL,'$2y$10$3NoryWKfGsH1J5Rxo84o9uBAyaq9RYCRqZJnqp3BA1TbkbJ6np//.',NULL,NULL,NULL,NULL,NULL),(141,'Real Chandra','real.chandra@gmail.com',NULL,'$2y$10$jLGd3EcV3fYePMzyL1HXZO.m10UfbhMeftRCRW/uRBoMZnfCOwp3G',NULL,NULL,NULL,NULL,NULL),(142,'Edo','edopuro@yahoo.com',NULL,'$2y$10$pUkfV7jy0Tgi0iwdc2Efv.asAt2gp2y38AcL2aSl7eTT6DQH4jGGu',NULL,NULL,NULL,NULL,NULL),(143,'Seriusman Waruwu','seriusman0@gmail.com',NULL,'$2y$10$jTElUnQ0vGEQtE7N28mpc.UsdDrc6TOqRsXSF.C85wbaOYLnzY8dO',NULL,NULL,NULL,NULL,NULL),(144,'ZENLI DESPRIHARSANTO','zenlidespriharsanto@gmail.com',NULL,'$2y$10$pPalZYnRZpJ5P9D8sKaZKuaNASmkpoSQjlr1l3A/MBJtS5phtgGL.',NULL,NULL,NULL,NULL,NULL),(145,'Drs daharuddin B','relgavahleviroel@gmail.com',NULL,'$2y$10$jjdDy.bvD7P/QOxpxtYqoOlHy/V2hcV6bjBecf8oSpHGK9Lo5HoY2',NULL,NULL,NULL,NULL,NULL),(146,'Iswadi Batara Randa','wadhy82@gmail.com',NULL,'$2y$10$F2fLBISGoPv3E2SeCZRcBuFdklUG7u61HTG1CbWYZDuwZNa0437SK',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visi_misi`
--

DROP TABLE IF EXISTS `visi_misi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visi_misi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `konten` longtext,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `image` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visi_misi`
--

LOCK TABLES `visi_misi` WRITE;
/*!40000 ALTER TABLE `visi_misi` DISABLE KEYS */;
INSERT INTO `visi_misi` VALUES (1,'<h3 style=\"text-align: center;\"><b>Visi</b></h3><p style=\"text-align: center;\"><b><font color=\"#17102f\" face=\"Montserrat, Segoe UI, Roboto, Helvetica Neue, Arial, sans-serif\"><span style=\"font-size: 15px;\">Menjadi salah satu Perusahaan Jalan Tol Nasional terkemuka dengan fokus membangun jalan-jalan yang strategis.</span></font><br></b></p><p style=\"text-align: center;\"></p><h3 style=\"text-align: center; \"><b>Misi</b></h3><p><font color=\"#17102f\" face=\"Montserrat, Segoe UI, Roboto, Helvetica Neue, Arial, sans-serif\"><span style=\"font-size: 15px;\"><b>Berupaya mencapai pertumbuhan jangka panjang yang berkelanjutan dan meningkatkan nilai tambah pemegang saham dengan senantiasa mengoperasikan Jalan Tol secara efisien dan memberikan pelayanan optimal.</b></span></font><br></p><p></p>','2022-01-17 01:41:48','2022-01-17 08:41:48','uploads/7/2022-01/paradaeng.jpeg','uploads/7/2022-01/terbaik.jpeg');
/*!40000 ALTER TABLE `visi_misi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-20 14:32:32
