/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marcas` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `ruta` varchar(20) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `secciones` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `marcas` VALUES (1,'Zara','etiquetas/zara','1,2,3,4,5,7,12,13,14,15,17,18,20'),(2,'Uterque','etiquetas/uterque','6'),(3,'Pull','etiquetas/pull','8,9,11'),(4,'Lefties','etiquetas/lefties','19'),(5,'Bershka','etiquetas/bershka','10,21');
