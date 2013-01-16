/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gi_rework` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(160) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `gi_rework` VALUES (2,'No'),(3,'Trabajo no siguiendo lo indicado en el plano en vigor por deicisión de Electrorayma'),(4,'Otro'),(5,'Si');
