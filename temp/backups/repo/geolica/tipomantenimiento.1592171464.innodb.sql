/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipomantenimiento` (
  `Id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Deleted` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `tipomantenimiento` VALUES (1,'-Ninguno-',0),(2,'Empresa Ajena Parq.',0),(3,'Eufer',0),(4,'Gran Correctivo',0),(6,'Preaviso',0),(7,'Preventivo Anual',0),(8,'Preventivo Semestral',0),(9,'Resetear',0),(10,'Revisión',0),(11,'Correctivo',0),(12,'Rearmar Celda',0),(13,'Rearmar SubEstacion',0);
