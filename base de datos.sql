-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: tutorias
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
-- Table structure for table `docente`
--

DROP TABLE IF EXISTS `docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docente` (
  `id_docente` int NOT NULL,
  `nom_docente` varchar(10) DEFAULT NULL,
  `ape_docente` varchar(15) DEFAULT NULL,
  `correo` varchar(30) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `registro_doc` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_docente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docente`
--

LOCK TABLES `docente` WRITE;
/*!40000 ALTER TABLE `docente` DISABLE KEYS */;
INSERT INTO `docente` VALUES (1,'Carlos','Perez','carlos.perez@uni.edu','3001111111','2025-08-27 01:34:28'),(2,'Ana','Lopez','ana.lopez@uni.edu','3001111112','2025-08-27 01:34:28'),(3,'Luis','Martinez','luis.mtz@uni.edu','3001111113','2025-08-27 01:34:28'),(4,'Marta','Gomez','marta.gomez@uni.edu','3001111114','2025-08-27 01:34:28'),(5,'Sofia','Castro','sofia.castro@uni.edu','3001111115','2025-08-27 01:34:28'),(6,'Diego','Ramirez','diego.ramirez@uni.edu','3001111116','2025-08-27 01:34:28'),(7,'Julian','Reyes','julian.reyes@uni.edu','3001111117','2025-08-27 01:34:28'),(8,'Laura','Hernandez','laura.hernandez@uni.edu','3001111118','2025-08-27 01:34:28'),(9,'Andres','Rojas','andres.rojas@uni.edu','3001111119','2025-08-27 01:34:28'),(10,'Paola','Guerrero','paola.guerrero@uni.edu','3001111120','2025-08-27 01:34:28'),(11,'David','Vargas','david.vargas@uni.edu','3001111121','2025-08-27 01:34:28'),(12,'Cristina','Mora','cristina.mora@uni.edu','3001111122','2025-08-27 01:34:28'),(13,'Santiago','Acosta','santiago.acosta@uni.edu','3001111123','2025-08-27 01:34:28'),(14,'Valeria','Mejia','valeria.mejia@uni.edu','3001111124','2025-08-27 01:34:28'),(15,'Felipe','Gutierrez','felipe.gutierrez@uni.edu','3001111125','2025-08-27 01:34:28'),(16,'Lucia','Navarro','lucia.navarro@uni.edu','3001111126','2025-08-27 01:34:28'),(17,'Sebastian','Cano','sebastian.cano@uni.edu','3001111127','2025-08-27 01:34:28'),(18,'Manuela','Diaz','manuela.diaz@uni.edu','3001111128','2025-08-27 01:34:28'),(19,'Camilo','Moreno','camilo.moreno@uni.edu','3001111129','2025-08-27 01:34:28'),(20,'Angela','Salazar','angela.salazar@uni.edu','3001111130','2025-08-27 01:34:28'),(21,'Esteban','Cortes','esteban.cortes@uni.edu','3001111131','2025-08-27 01:34:28'),(22,'Natalia','Peña','natalia.pena@uni.edu','3001111132','2025-08-27 01:34:28'),(23,'Juan','Jimenez','juan.jimenez@uni.edu','3001111133','2025-08-27 01:34:28'),(24,'Maria','Rivera','maria.rivera@uni.edu','3001111134','2025-08-27 01:34:28'),(25,'Fernando','Lozano','fernando.lozano@uni.edu','3001111135','2025-08-27 01:34:28'),(26,'Daniela','Suarez','daniela.suarez@uni.edu','3001111136','2025-08-27 01:34:28'),(27,'Oscar','Bermudez','oscar.bermudez@uni.edu','3001111137','2025-08-27 01:34:28'),(28,'Catalina','Santos','catalina.santos@uni.edu','3001111138','2025-08-27 01:34:28'),(29,'Ricardo','Torres','ricardo.torres@uni.edu','3001111139','2025-08-27 01:34:28'),(30,'Patricia','Ortega','patricia.ortega@uni.edu','3001111140','2025-08-27 01:34:28');
/*!40000 ALTER TABLE `docente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docente_materia`
--

DROP TABLE IF EXISTS `docente_materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docente_materia` (
  `id_docente` int NOT NULL,
  `id_materia` int NOT NULL,
  PRIMARY KEY (`id_docente`,`id_materia`),
  KEY `id_materia` (`id_materia`),
  CONSTRAINT `docente_materia_ibfk_1` FOREIGN KEY (`id_docente`) REFERENCES `docente` (`id_docente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `docente_materia_ibfk_2` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docente_materia`
--

LOCK TABLES `docente_materia` WRITE;
/*!40000 ALTER TABLE `docente_materia` DISABLE KEYS */;
INSERT INTO `docente_materia` VALUES (1,1),(7,1),(11,1),(16,1),(21,1),(25,1),(2,2),(8,2),(12,2),(17,2),(22,2),(26,2),(3,3),(9,3),(13,3),(18,3),(23,3),(27,3),(4,4),(10,4),(14,4),(19,4),(24,4),(28,4),(1,5),(5,5),(15,5),(20,5),(25,5),(29,5),(2,6),(6,6),(11,6),(16,6),(26,6),(30,6),(3,7),(7,7),(12,7),(17,7),(21,7),(27,7),(4,8),(8,8),(13,8),(18,8),(22,8),(28,8),(5,9),(9,9),(14,9),(19,9),(23,9),(29,9),(6,10),(10,10),(15,10),(20,10),(24,10),(30,10);
/*!40000 ALTER TABLE `docente_materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiantes`
--

DROP TABLE IF EXISTS `estudiantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiantes` (
  `id_estudiante` int NOT NULL,
  `nom_estudiante` varchar(10) DEFAULT NULL,
  `ape_estudiante` varchar(15) DEFAULT NULL,
  `correo` varchar(30) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `registro_est` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_estudiante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiantes`
--

LOCK TABLES `estudiantes` WRITE;
/*!40000 ALTER TABLE `estudiantes` DISABLE KEYS */;
INSERT INTO `estudiantes` VALUES (1,'Jorge','Martinez','jorge.mtz@uni.edu','3011111111','2025-08-27 01:34:42'),(2,'Laura','Castro','laura.castro@uni.edu','3011111112','2025-08-27 01:34:42'),(3,'Andres','Gomez','andres.gomez@uni.edu','3011111113','2025-08-27 01:34:42'),(4,'Natalia','Rojas','natalia.rojas@uni.edu','3011111114','2025-08-27 01:34:42'),(5,'Felipe','Hernandez','felipe.hernandez@uni.edu','3011111115','2025-08-27 01:34:42'),(6,'Camila','Diaz','camila.diaz@uni.edu','3011111116','2025-08-27 01:34:42'),(7,'Sebastian','Ramirez','sebastian.ramirez@uni.edu','3011111117','2025-08-27 01:34:42'),(8,'Sofia','Lopez','sofia.lopez@uni.edu','3011111118','2025-08-27 01:34:42'),(9,'Cristian','Moreno','cristian.moreno@uni.edu','3011111119','2025-08-27 01:34:42'),(10,'Valeria','Peña','valeria.pena@uni.edu','3011111120','2025-08-27 01:34:42'),(11,'Esteban','Cano','esteban.cano@uni.edu','3011111121','2025-08-27 01:34:42'),(12,'Daniela','Salazar','daniela.salazar@uni.edu','3011111122','2025-08-27 01:34:42'),(13,'Manuel','Guerrero','manuel.guerrero@uni.edu','3011111123','2025-08-27 01:34:42'),(14,'Carolina','Acosta','carolina.acosta@uni.edu','3011111124','2025-08-27 01:34:42'),(15,'Oscar','Vargas','oscar.vargas@uni.edu','3011111125','2025-08-27 01:34:42'),(16,'Angela','Rivera','angela.rivera@uni.edu','3011111126','2025-08-27 01:34:42'),(17,'Julian','Mora','julian.mora@uni.edu','3011111127','2025-08-27 01:34:42'),(18,'Catalina','Mejia','catalina.mejia@uni.edu','3011111128','2025-08-27 01:34:42'),(19,'David','Gutierrez','david.gutierrez@uni.edu','3011111129','2025-08-27 01:34:42'),(20,'Lucia','Navarro','lucia.navarro@uni.edu','3011111130','2025-08-27 01:34:42'),(21,'Juan','Reyes','juan.reyes@uni.edu','3011111131','2025-08-27 01:34:42'),(22,'Cristina','Ortega','cristina.ortega@uni.edu','3011111132','2025-08-27 01:34:42'),(23,'Diego','Jimenez','diego.jimenez@uni.edu','3011111133','2025-08-27 01:34:42'),(24,'Marta','Torres','marta.torres@uni.edu','3011111134','2025-08-27 01:34:42'),(25,'Fernando','Lozano','fernando.lozano@uni.edu','3011111135','2025-08-27 01:34:42'),(26,'Paola','Santos','paola.santos@uni.edu','3011111136','2025-08-27 01:34:42'),(27,'Ricardo','Bermudez','ricardo.bermudez@uni.edu','3011111137','2025-08-27 01:34:42'),(28,'Maria','Cortes','maria.cortes@uni.edu','3011111138','2025-08-27 01:34:42'),(29,'Patricia','Suarez','patricia.suarez@uni.edu','3011111139','2025-08-27 01:34:42'),(30,'Camilo','Lopez','camilo.lopez@uni.edu','3011111140','2025-08-27 01:34:42');
/*!40000 ALTER TABLE `estudiantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia`
--

DROP TABLE IF EXISTS `materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materia` (
  `id_materia` int NOT NULL,
  `nombre_materia` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_materia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia`
--

LOCK TABLES `materia` WRITE;
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
INSERT INTO `materia` VALUES (1,'Matematicas'),(2,'Fisica'),(3,'Quimica'),(4,'Biologia'),(5,'Programacion'),(6,'BasesDatos'),(7,'Redes'),(8,'Estadistica'),(9,'Algoritmos'),(10,'Etica');
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas` (
  `id_nota` int NOT NULL,
  `id_materia` int DEFAULT NULL,
  `nota` float DEFAULT NULL,
  `id_estudiante` int DEFAULT NULL,
  PRIMARY KEY (`id_nota`),
  KEY `id_materia` (`id_materia`),
  KEY `id_estudiante` (`id_estudiante`),
  CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `notas_ibfk_2` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_estudiante`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,1,4.5,1),(2,2,3.8,2),(3,3,4,3),(4,4,3.5,4),(5,5,4.2,5),(6,6,3.9,6),(7,7,4.8,7),(8,8,3.2,8),(9,9,4.1,9),(10,10,3.7,10),(11,1,4,11),(12,2,4.6,12),(13,3,3.3,13),(14,4,4.4,14),(15,5,4.9,15),(16,6,3.1,16),(17,7,4.3,17),(18,8,3.6,18),(19,9,4.7,19),(20,10,3.4,20),(21,1,4.2,21),(22,2,3.9,22),(23,3,4.5,23),(24,4,3,24),(25,5,4.8,25),(26,6,3.7,26),(27,7,4.1,27),(28,8,3.5,28),(29,9,4.4,29),(30,10,3.8,30);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutorias`
--

DROP TABLE IF EXISTS `tutorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tutorias` (
  `id_tutoria` int NOT NULL,
  `tema` varchar(15) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `id_docente` int DEFAULT NULL,
  `id_estudiante` int DEFAULT NULL,
  PRIMARY KEY (`id_tutoria`),
  KEY `id_docente` (`id_docente`),
  KEY `id_estudiante` (`id_estudiante`),
  CONSTRAINT `tutorias_ibfk_1` FOREIGN KEY (`id_docente`) REFERENCES `docente` (`id_docente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tutorias_ibfk_2` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_estudiante`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorias`
--

LOCK TABLES `tutorias` WRITE;
/*!40000 ALTER TABLE `tutorias` DISABLE KEYS */;
INSERT INTO `tutorias` VALUES (1,'Repaso Algebra','2025-08-01','10:00:00',1,1),(2,'Fisica Mecanica','2025-08-01','11:00:00',2,2),(3,'Lab Quimica','2025-08-02','09:30:00',3,3),(4,'Genetica','2025-08-02','14:00:00',4,4),(5,'Java Basico','2025-08-03','15:00:00',5,5),(6,'SQL Joins','2025-08-03','08:00:00',6,6),(7,'IP Config','2025-08-04','16:00:00',7,7),(8,'Probabilidad','2025-08-04','13:00:00',8,8),(9,'Pseudocodigo','2025-08-05','09:00:00',9,9),(10,'Etica Prof','2025-08-05','10:30:00',10,10),(11,'Calculo I','2025-08-06','11:30:00',11,11),(12,'Ondas','2025-08-06','12:00:00',12,12),(13,'Org Quimica','2025-08-07','08:30:00',13,13),(14,'Microbiologia','2025-08-07','09:45:00',14,14),(15,'Python Intro','2025-08-08','14:15:00',15,15),(16,'SQL Avanzado','2025-08-08','16:20:00',16,16),(17,'Routers','2025-08-09','10:00:00',17,17),(18,'Regresion','2025-08-09','11:00:00',18,18),(19,'Complejidad','2025-08-10','15:40:00',19,19),(20,'Etica Bio','2025-08-10','16:30:00',20,20),(21,'Trigonometria','2025-08-11','09:00:00',21,21),(22,'Electromagnet','2025-08-11','13:30:00',22,22),(23,'Quimica Fisica','2025-08-12','08:00:00',23,23),(24,'Zoologia','2025-08-12','10:00:00',24,24),(25,'POO Java','2025-08-13','11:00:00',25,25),(26,'ERD Diagram','2025-08-13','15:30:00',26,26),(27,'Switch Config','2025-08-14','17:00:00',27,27),(28,'Inferencia','2025-08-14','09:15:00',28,28),(29,'Grafos','2025-08-15','14:50:00',29,29),(30,'Etica Trabajo','2025-08-15','13:00:00',30,30);
/*!40000 ALTER TABLE `tutorias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-26 21:28:29
