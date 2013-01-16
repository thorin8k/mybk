/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fabricacion` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `quit` varchar(3) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `lugar` varchar(25) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `fabricacion` VALUES (1,'310','CHINA'),(2,'407','BULGARIA'),(3,'345','BANGLADESH'),(4,'306','CAMBOYA'),(5,'410','ESPAÑA'),(6,'337','VIETNAM'),(7,'335','THAILANDIA'),(8,'0',''),(9,'401','ALBANIA'),(10,'417','ITALIA'),(11,'341','HONG KONG'),(12,'436','TURQUIA'),(13,'427','RUMANIA'),(14,'326','MALASIA'),(15,'127','MARRUECOS'),(16,'124','MADAGASCAR'),(17,'425','PORTUGAL'),(18,'316','INDONESIA');
