-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: appsalon_mvc
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `citas`
--

DROP TABLE IF EXISTS `citas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `usuarioId` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citas`
--

LOCK TABLES `citas` WRITE;
/*!40000 ALTER TABLE `citas` DISABLE KEYS */;
/*!40000 ALTER TABLE `citas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citaservicios`
--

DROP TABLE IF EXISTS `citaservicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citaservicios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cita` int DEFAULT NULL,
  `servicioId` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citaservicios`
--

LOCK TABLES `citaservicios` WRITE;
/*!40000 ALTER TABLE `citaservicios` DISABLE KEYS */;
/*!40000 ALTER TABLE `citaservicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios`
--

DROP TABLE IF EXISTS `servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) DEFAULT NULL,
  `precio` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (1,'Corte Cabello Mujer',90.00),(2,'Corte Cabello Hombre',80.00);
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) DEFAULT '',
  `apellido` varchar(60) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `confirmado` tinyint(1) DEFAULT NULL,
  `token` char(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'dsada','dasdsa','dsadsad','dasda','dsadsa',0,0,'dasdsa254das'),(8,' pedro','dsad','pedro1@gmail.com','$2y$10$r1mmOaQUIG2MRC9QHNnWr.XkDAzuSi0Yyl8RjztVmoQCUYhQ6wDm6','58996',0,0,'65428fc846757'),(9,' german','vallejo','german@gmail.com','$2y$10$7.MWnrAqJUhEnd8QrVSyYu.L//.rI31zMHK6W89tEVmgFe7qN3e3O','215874',0,0,'6543bea3356db'),(10,' german','vallejo','pedro5874@gmail.com','$2y$10$ydTuP4neNuaE5iIxNUwlDOQgMw5oSWBG6MR/ggOgtE4/RmnT2Xzu2','215874',0,0,'6543cee11798f'),(11,' german','vallejo','pedro4587@gmail.com','$2y$10$TM4GC5chFsIo91Di9ToDtOWQigvsdm.MeFLORntFCGUo1YefT6ZXm','215874',0,0,'6543d00fda401'),(12,' german','vallejo','pedro48741@gmail.com','$2y$10$5REg9..C9gh9ujkrWacTMeRb8bPMhm4/xEsJ3Gz9299I6fzwKZCcK','215874',0,0,'6543d62d74624'),(13,' german','vallejo','pedro14587458@gmail.com','$2y$10$5117CaeMs0VFzYTyzeiLsO1CdjxS0u8hf6JPtuHUjIu5kGa4GNjSa','215874',0,1,''),(14,' german','vallejo','pedro3020@gmail.com','$2y$10$KgrKI5VfkjvEYKT4PJkg/OEb169B8RKeSoXijYeBEgGroh0iT7MYO','215874',0,1,''),(15,' german','vallejo','pedro5@gmail.com','$2y$10$Uczt7luaQYdRBn.7XCe8R.B6wi/QrFoR1uGad6piOq0Pu.cEx71uS','215874',0,1,''),(16,' german','vallejo','pedro1874@gmail.com','$2y$10$t6bXRFWhRDcAlzpC0modPOUUl9nu536JKOIhAuM2QDFLy/hIWZRUi','215874',0,1,''),(17,' german','vallejo','pedro@gmail.com','$2y$10$J7ij68FTbzA3hBhNol/HE.YB3hEJDQ50iwc/F8s3gN/yPu0T.g4hu','215874',0,1,''),(18,' diego','vallejo','dijolev@gmail.com','$2y$10$vQsnU5cCh85Gs8GbHsJtQ.ViaSAMHPT4Iaazy3i7KwDzjtO63e5YK','215874',0,1,''),(19,' crisitian','morales','cristian@gmail.com','$2y$10$hKOMnUv/mcJOxyA6vL.wEePjJAKke3pHQkiIu4WcEPrDf4yjVqZuq','125412',1,1,''),(20,' adrian','grisales','adrian@gmail.com','$2y$10$Z8KKFLvnkwWQKH7hflOxwOLQjMlH/95ECY1PFg.8KlI/JL3bsWPKq','312589746',0,1,'656563baacb7f'),(21,' alejandra','valencia','alejandra@gmail.com','$2y$10$UhVda3i5aVuXj4MolSF1yuDePEATyc4RjHE5HInM6rMmFIkI2Xkee','1254874',0,1,'');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-28  9:34:08
