/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temporadas` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `temporada` varchar(5) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `temporadas` VALUES (1,'V2009'),(2,'I2009'),(3,'I2010'),(4,'V2010'),(5,'V2011'),(6,'I2011'),(7,'I2012'),(8,'V2012');
