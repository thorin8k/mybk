/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seccion` (
  `Id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ModuloId` bigint(20) unsigned DEFAULT NULL,
  `Nombre` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Ruta` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Deleted` tinyint(1) unsigned DEFAULT NULL,
  `DetailOfSeccionId` bigint(20) unsigned DEFAULT NULL,
  `InicialModulo` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_seccion_1` (`ModuloId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `seccion` VALUES (1,1,'Listado de Partes','/List.aspx','Listado de partes de mantenimiento.',0,0,1),(3,1,'Nuevo Parte','/Add.aspx','Agregar un nuevo parte de mantenimiento.',0,0,0),(4,1,'Ver o Editar Datos del Parte','/Detail.aspx','Ver o editar parte de mantenimiento.',0,1,0),(5,2,'Listado de Informes','/List.aspx','Listado de informes de producción.',0,0,1),(6,2,'Nuevo Informe','/Add.aspx','Agregar un nuevo informe de producción.',0,0,0),(7,2,'Ver o Editar Datos del Informe','/Detail.aspx','Ver o editar informe de producción.',0,5,0),(8,3,'General','/General.aspx','Inicio del modulo de estadísticas',0,0,1),(9,3,'Partes Mant.','/PartesMant.aspx','Informe estadístico de Partes de Mantenimiento',0,0,0),(10,3,'Inf. Producción','/Produccion.aspx','Informe estadístico de Inf. Producción',0,0,0);
