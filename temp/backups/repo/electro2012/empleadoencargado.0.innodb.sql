/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleadoencargado` (
  `idempleado` int(11) NOT NULL,
  `idencargado` int(11) NOT NULL,
  PRIMARY KEY (`idempleado`,`idencargado`),
  KEY `fk_empleadoencargado_empleado1` (`idempleado`),
  KEY `fk_empleadoencargado_empleado2` (`idencargado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
