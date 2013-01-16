/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modulo` (
  `Id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Ruta` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Deleted` tinyint(1) unsigned DEFAULT NULL,
  `Abreviatura` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Repositorio` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `modulo` VALUES (1,'Partes Mantenimiento','/PartesEolicos/Modules/PartesMant','Partes diarios de mantenimiento de Aerogeneradores.',0,'Partes Mant.','/Documentos/PartesMant'),(2,'Informes Producción','/PartesEolicos/Modules/InfProduccion','Informes de producción de Aerogeneradores.',0,'Inf. Produc.','/Documentos/InfProduc'),(3,'Estadísticas','/PartesEolicos/Modules/Estadisticas','Información Estadística de la aplicación',0,'Estadísticas','/Documentos/Estadisticas');
