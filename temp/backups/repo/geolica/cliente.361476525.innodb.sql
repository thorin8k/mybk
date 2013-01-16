/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `Id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Deleted` tinyint(1) unsigned DEFAULT NULL,
  `img` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `id_UNIQUE` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `cliente` VALUES (1,'Navantia',0,''),(2,'Eufer',0,''),(3,'Gas Natural Fenosa Renovables',0,'gnr.png'),(4,'Enel Green Power',0,'enel.png'),(5,'Adelanta',0,'adelanta.png'),(6,'EDP Renovables',0,'edp.png'),(7,'Demostración',0,'');
