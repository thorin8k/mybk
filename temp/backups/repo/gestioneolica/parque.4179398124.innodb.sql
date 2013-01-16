/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parque` (
  `Id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Abreviatura` varchar(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ClienteId` bigint(20) unsigned DEFAULT NULL,
  `Deleted` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `id_UNIQUE` (`Id`),
  KEY `idcliente` (`ClienteId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `parque` VALUES (1,'PR','Ponte Rebordelo',1,0),(2,'VG','Valsagueiro',1,0),(3,'SR','Silvarredonda',2,0),(4,'PF','Peñaforcada',2,0),(5,'DV','Do Vilan',2,0),(6,'VV','Viravento',2,0);
