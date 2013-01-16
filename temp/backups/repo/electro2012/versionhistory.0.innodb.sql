/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versionhistory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Fecha` varchar(20) CHARACTER SET latin1 NOT NULL,
  `Descripcion` varchar(45) CHARACTER SET latin1 NOT NULL,
  `Version` varchar(10) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
