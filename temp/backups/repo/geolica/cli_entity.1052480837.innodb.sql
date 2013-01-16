/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cli_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(85) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ViewName` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `table_name` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `cli_entity` VALUES (1,'parque','Parques','parque'),(2,'aerogenerador','Aerogeneradores','aerogenerador');
