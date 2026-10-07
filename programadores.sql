-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: programadores
-- ------------------------------------------------------
-- Server version	9.7.1

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `novedades`
--

DROP TABLE IF EXISTS `novedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `novedades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitulo` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cuerpo` text COLLATE utf8mb4_unicode_ci,
  `img_id` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `novedades`
--

LOCK TABLES `novedades` WRITE;
/*!40000 ALTER TABLE `novedades` DISABLE KEYS */;
INSERT INTO `novedades` VALUES (2,'Argentina vs. Burkina Faso, el segundo amistoso tras el Mundial: el plantel africano arribó a Buenos Aires cinco horas antes del partido','Argentina vs. Burkina Faso, el segundo amistoso tras el Mundial: el plantel africano arribó a Buenos Aires cinco horas antes del partido','Argentina vs. Burkina Faso, el segundo amistoso tras el Mundial: el plantel africano arribó a Buenos Aires cinco horas antes del partido','1791057116511-hMwOLqj6A_720x0__1.jpg'),(4,'Node.js cambia su calendario de lanzamientos en 2026','En pocas palabras: A partir de octubre de 2026, Node.js pasa de dos versiones mayores al año a una sola (en abril), terminando el esquema par/impar desde 2015. Según el Release Working Group, el motivo real es el agotamiento del equipo de mantenimiento, que debía parchear seguridad en cuatro o cinco ramas activas simultáneas.','Node.js pasa de dos lanzamientos mayores al año a uno solo a partir de octubre de 2026, según el anuncio oficial del Release Working Group. Node.js 27 arranca su fase Alpha este mes, llega como 27.0.0 en abril de 2027 y entra en LTS en octubre de 2027. Se termina el esquema par/impar que existía desde 2015. El calendario de lanzamientos Node.js es el cronograma oficial que define cuándo sale cada versión mayor del runtime, cuánto dura su fase de soporte estándar (Current) y cuándo pasa a Long-Term Support (LTS). Lo administra el Release Working Group del proyecto, bajo la OpenJS Foundation, y hasta ahora alternaba una versión par con soporte extendido y una impar de vida corta cada seis meses.','1791057767473-images.jpg');
/*!40000 ALTER TABLE `novedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarioycontraseñaprogramadores`
--

DROP TABLE IF EXISTS `usuarioycontraseñaprogramadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarioycontraseñaprogramadores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contraseña` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarioycontraseñaprogramadores`
--

LOCK TABLES `usuarioycontraseñaprogramadores` WRITE;
/*!40000 ALTER TABLE `usuarioycontraseñaprogramadores` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarioycontraseñaprogramadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'programadores'
--
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-04 11:22:30
