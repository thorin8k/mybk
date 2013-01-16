/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleadojefedeobra` (
  `idempleado` int(11) NOT NULL,
  `idjefedeobra` int(11) NOT NULL,
  PRIMARY KEY (`idempleado`,`idjefedeobra`),
  KEY `fk_empleadojefedeobra_empleado1` (`idempleado`),
  KEY `fk_empleadojefedeobra_empleado2` (`idjefedeobra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
