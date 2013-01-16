/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `puesto` (
  `idpuesto` int(11) NOT NULL AUTO_INCREMENT,
  `puesto` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idpuesto`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `puesto` VALUES (1,'BOBINADOR'),(2,'CALDERERO'),(3,'DELINEANTE'),(4,'ELECTRICISTA'),(5,'ELECTROMECANICO'),(6,'ELECTRONICO'),(7,'ENCARGADO'),(8,'JEFE EQUIPO'),(9,'MECANICO'),(10,'SOLDADOR'),(11,'TEC. INDUST.'),(12,'TEC. ORGANIZACIÓN'),(13,'TECNICO');
