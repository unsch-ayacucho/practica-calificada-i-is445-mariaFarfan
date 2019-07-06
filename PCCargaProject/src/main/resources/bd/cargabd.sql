CREATE DATABASE  IF NOT EXISTS `cargabd` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cargabd`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cargabd
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cargaacademica`
--

DROP TABLE IF EXISTS `cargaacademica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cargaacademica` (
  `idCarga` int(11) NOT NULL,
  `numeroHorasSemanales` int(11) NOT NULL,
  PRIMARY KEY (`idCarga`),
  UNIQUE KEY `idCargaAcademica_UNIQUE` (`idCarga`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargaacademica`
--

LOCK TABLES `cargaacademica` WRITE;
/*!40000 ALTER TABLE `cargaacademica` DISABLE KEYS */;
INSERT INTO `cargaacademica` VALUES (1,12),(2,16);
/*!40000 ALTER TABLE `cargaacademica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docente`
--

DROP TABLE IF EXISTS `docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `docente` (
  `idDocente` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_bin NOT NULL,
  `apellido` varchar(45) COLLATE utf8_bin NOT NULL,
  `idCarga` int(11) NOT NULL,
  `idSemestre` int(11) NOT NULL,
  PRIMARY KEY (`idDocente`),
  UNIQUE KEY `idDocente_UNIQUE` (`idDocente`),
  UNIQUE KEY `UK_r9mutm33e0rmd430lnq1rttum` (`idCarga`),
  UNIQUE KEY `UK_9cx9d5a1spbh4tvkw38g9j9a8` (`idSemestre`),
  CONSTRAINT `fk_car` FOREIGN KEY (`idCarga`) REFERENCES `cargaacademica` (`idCarga`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_sem` FOREIGN KEY (`idSemestre`) REFERENCES `semenstreacademico` (`idSemestre`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docente`
--

LOCK TABLES `docente` WRITE;
/*!40000 ALTER TABLE `docente` DISABLE KEYS */;
INSERT INTO `docente` VALUES (1,'Fredy','Barrientos',1,1),(2,'Maria','Farfan',2,2);
/*!40000 ALTER TABLE `docente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semenstreacademico`
--

DROP TABLE IF EXISTS `semenstreacademico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `semenstreacademico` (
  `idSemestre` int(11) NOT NULL,
  `semestre` varchar(45) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idSemestre`),
  UNIQUE KEY `idSemestreAcademico_UNIQUE` (`idSemestre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semenstreacademico`
--

LOCK TABLES `semenstreacademico` WRITE;
/*!40000 ALTER TABLE `semenstreacademico` DISABLE KEYS */;
INSERT INTO `semenstreacademico` VALUES (1,'2019_I'),(2,'2019_I');
/*!40000 ALTER TABLE `semenstreacademico` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-05 17:25:28
