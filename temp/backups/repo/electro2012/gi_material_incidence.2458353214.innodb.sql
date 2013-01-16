/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gi_material_incidence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `units` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `cost` double NOT NULL,
  `material_id` int(11) DEFAULT NULL,
  `incidence_id` int(11) NOT NULL,
  `mat_desc` varchar(160) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_material_incidence_material` (`material_id`),
  KEY `fk_material_incidence_incidence1` (`incidence_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `gi_material_incidence` VALUES (1,2,1.5,0,1,45,NULL),(2,333,1.5,0,1,45,NULL),(22,2,1.5,0,1,68,NULL),(23,5,1.5,0,1,68,NULL),(24,5,1.5,0,1,68,NULL),(25,123,1.5,0,1,69,NULL),(26,123,2,0,1,69,NULL),(52,3,1.5,4.5,1,43,NULL),(53,1,1.5,1.5,1,79,'ADF'),(54,2,1.5,3,1,43,'ADF'),(57,12,26,312,NULL,43,'Mat Generico'),(59,2,1.5,3,1,43,'ADF'),(60,2,12,24,2,43,'Prueba 2'),(61,13,12,156,2,43,'Añadido a mano '),(64,3,1.5,4.5,1,79,'ADF'),(65,4,12,48,2,79,'Prueba 2'),(66,3,12,36,2,111,'Prueba 2');
