/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcontrata` (
  `Id` bigint(20) unsigned NOT NULL,
  `Nombre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Deleted` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `subcontrata` VALUES (1,'-Ninguno-',0),(2,'ElectroRayma',0),(3,'Eolnor',0),(4,'Eufer',0),(5,'Indra',0),(6,'Ingeteam',0),(7,'Izar Bonus',0),(8,'Metalurgia BB',0),(9,'Sarpel',0),(10,'Tecnorenova',0),(11,'W2PS',0),(12,'Wind Energy',0),(13,'Wintopower',0),(14,'Diagnóstica',0),(15,'SIEMSA',0);
