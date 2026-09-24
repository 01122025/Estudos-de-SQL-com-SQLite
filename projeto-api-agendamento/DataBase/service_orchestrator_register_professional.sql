-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: service_orchestrator
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `register_professional`
--

DROP TABLE IF EXISTS `register_professional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register_professional` (
  `id_professional` bigint NOT NULL,
  `usuario_id` int DEFAULT (2),
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `inicio_expediente` time DEFAULT NULL,
  `fim_expediente` time DEFAULT NULL,
  `atend_domicilio` varchar(255) NOT NULL,
  `active` tinyint(1) DEFAULT (true),
  `specialization` varchar(255) NOT NULL,
  PRIMARY KEY (`id_professional`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register_professional`
--

LOCK TABLES `register_professional` WRITE;
/*!40000 ALTER TABLE `register_professional` DISABLE KEYS */;
INSERT INTO `register_professional` VALUES (3,2,'Mariana Oliveira','mariana.oliveira@email.com','11981234567','PROFISSIONAL','09:00:00','18:00:00','NAO',1,'COLORACAO'),(4,2,'Juliana Santos','juliana.santos@email.com','11999887766','PROFISSIONAL','08:30:00','18:30:00','SIM',1,'TRATAMENTOS'),(5,2,'Camila Ferreira','camila.ferreira@email.com','11995554433','PROFISSIONAL','09:00:00','19:00:00','SIM',1,'MANICURE'),(6,2,'Beatriz Lima','beatriz.lima@email.com','11994443322','PROFISSIONAL','10:00:00','19:00:00','NAO',1,'PEDICURE'),(7,2,'Larissa Costa','larissa.costa@email.com','11993332211','PROFISSIONAL','08:00:00','16:00:00','SIM',1,'DESIGN_DE_SOBRANCELHAS'),(8,2,'Gabriela Martins','gabriela.martins@email.com','11991112233','PROFISSIONAL','10:00:00','20:00:00','SIM',1,'MAQUIAGEM'),(9,2,'Patricia Rocha','patricia.rocha@email.com','11988887777','PROFISSIONAL','08:00:00','17:00:00','SIM',1,'MASSAGEM');
/*!40000 ALTER TABLE `register_professional` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-24  2:57:42
