-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Dumping data for table `cajeros`
--

LOCK TABLES `cajeros` WRITE;
/*!40000 ALTER TABLE `cajeros` DISABLE KEYS */;
INSERT INTO `cajeros` VALUES (1,1,'paraguay 777',3000000);
/*!40000 ALTER TABLE `cajeros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,1,1,'Belen','Vega'),(2,1,1,'Quinlan','Isaac'),(3,2,3,'Karen','Yuli'),(4,3,3,'Lillith','Tarik'),(5,4,2,'Acton','Kyla'),(6,5,2,'Lyle','Walker');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cuenta`
--

LOCK TABLES `cuenta` WRITE;
/*!40000 ALTER TABLE `cuenta` DISABLE KEYS */;
INSERT INTO `cuenta` VALUES (1,'gold',20000,3),(2,'clasic',10000,1),(3,'clasic',53,2),(4,'black',465,1),(5,'black',428,3),(6,'clasic',18,0),(7,'clasic',839,3),(8,'black',493,4),(9,'clasic',996,4),(10,'clasic',922,1),(11,'gold',412,1),(12,'clasic',77,1),(13,'gold',734,1),(14,'clasic',418,2),(15,'gold',114,4),(16,'clasic',956,5),(17,'clasic',954,2),(18,'gold',764,3),(19,'clasic',161,3),(20,'gold',801,2),(21,'clasic',459,2),(22,'black',745,3),(23,'clasic',5,3),(24,'clasic',126,5),(25,'gold',218,1),(26,'clasic',461,4),(27,'black',496,4),(28,'black',278,4),(29,'black',274,1),(30,'black',735,1),(31,'clasic',269,5),(32,'black',234,4),(60,'gold',2000,2),(61,'black',20000,5),(62,'black',20000,3),(63,'gold',2000,3),(64,'clasic',20000,2),(65,'gold',18000,4),(66,'black',5000,1),(67,'clasic',1000,1);
/*!40000 ALTER TABLE `cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cuentaarchivos`
--

LOCK TABLES `cuentaarchivos` WRITE;
/*!40000 ALTER TABLE `cuentaarchivos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuentaarchivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,1,'Rocio','Vega',1000,2),(2,2,'Rowan','Lacy',9459,1),(3,2,'Akeem','Jenna',8240,7),(4,3,'Hashim','Serina',6304,10),(5,2,'Yen','Macaulay',9251,23),(6,1,'Rashad','Herman',5508,0);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_auditoria`
--

LOCK TABLES `log_auditoria` WRITE;
/*!40000 ALTER TABLE `log_auditoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_auditoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `movimientos_auditoria`
--

LOCK TABLES `movimientos_auditoria` WRITE;
/*!40000 ALTER TABLE `movimientos_auditoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `movimientos_auditoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sucursal`
--

LOCK TABLES `sucursal` WRITE;
/*!40000 ALTER TABLE `sucursal` DISABLE KEYS */;
INSERT INTO `sucursal` VALUES (1,'casa central','paraguay 777'),(2,'centro','entre rios 1200'),(3,'Fisherton','eva peron 600'),(10,'Funes','AV Aerea 2605');
/*!40000 ALTER TABLE `sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tarjetas`
--

LOCK TABLES `tarjetas` WRITE;
/*!40000 ALTER TABLE `tarjetas` DISABLE KEYS */;
INSERT INTO `tarjetas` VALUES (1,'credito','visa',1,15000,10000,NULL),(2,'credito','visa',1,6059,4410,NULL),(3,'credito','mastercard',2,9200,2485,NULL),(4,'credito','visa',3,5034,103,NULL),(5,'credito','mastercard',4,9939,2071,NULL),(6,'credito','mastercard',5,42090,7754,NULL),(7,'credito','visa',6,9957,1586,NULL),(8,'credito','mastercard',7,60500,9559,NULL),(9,'credito','mastercard',8,40200,6789,NULL),(10,'credito','visa',9,9969,4101,NULL),(11,'credito','mastercard',10,55190,9430,NULL),(12,'credito','mastercard',11,10570,3001,NULL),(13,'credito','visa',12,25609,8124,NULL),(14,'credito','mastercard',13,9227,2758,NULL),(15,'credito','visa',14,9819,1301,NULL),(16,'credito','visa',15,2780,465,NULL),(17,'credito','mastercard',16,6619,694,NULL),(18,'credito','mastercard',17,6463,602,NULL),(19,'credito','visa',18,1725,947,NULL),(20,'credito','mastercard',19,4815,521,NULL),(21,'credito','visa',20,8753,6023,NULL);
/*!40000 ALTER TABLE `tarjetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `transacciones`
--

LOCK TABLES `transacciones` WRITE;
/*!40000 ALTER TABLE `transacciones` DISABLE KEYS */;
INSERT INTO `transacciones` VALUES (1,'retiro efectivo cajero',1,'0000-00-00',1),(2,'solicitud de prestado',1,'0000-00-00',1),(3,'solicitud de prestado',2,'0000-00-00',1),(4,'solicitud de prestado',3,'0000-00-00',1);
/*!40000 ALTER TABLE `transacciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-15 17:54:24
