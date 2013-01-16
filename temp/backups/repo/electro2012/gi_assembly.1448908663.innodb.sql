/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gi_assembly` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `equipment_name` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `place` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `worked_hours` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `comments` varchar(160) COLLATE utf8_spanish_ci DEFAULT NULL,
  `incidence_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_assembly_incidence1` (`incidence_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `gi_assembly` VALUES (1,'asdf','asdf','asdf','asdfffffff',45),(2,'prueba','prueba','prueba','prueba',56),(3,'pruebea','prueba','prueba','pruebaa2',67),(6,'','','','',99),(7,'','','','',112);
