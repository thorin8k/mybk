/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `destinos` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `lugar` varchar(25) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `destinos` VALUES (1,'Todos'),(2,'CONO SUR'),(3,'BRASIL'),(4,'ARGENTINA'),(5,'ARTEIXO'),(6,'ZARAGOZA'),(7,'MECO'),(8,'NARON'),(9,'MEXICO'),(10,'TURQUIA'),(11,'U.S.A.'),(12,'CANADA'),(13,'ISRAEL'),(14,'CHILE'),(15,'TORDERA'),(16,'TORDERA 1'),(17,'MEXICO 1'),(18,'MECO 1'),(19,'COMPLEMENTO'),(20,'CONO SUR 1'),(21,'ARGENTINA 1'),(22,'BRASIL 1'),(23,'CHINA'),(24,'MARRUECOS');
