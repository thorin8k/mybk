/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secciones` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `seccion` varchar(30) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `secciones` VALUES (1,'ZARA SEÑORA'),(2,'ZARA CABALLERO'),(3,'ZARA BABY'),(4,'ZARA BOYS'),(5,'ZARA GIRLS'),(6,'UTERQÜE S.L.'),(7,'TRAFALUC'),(8,'PULL BEAR CABALLERO'),(9,'PULL BEAR CHICA'),(10,'BERSHKA WOMAN'),(11,'STOCK SHOP CHICA'),(12,'ZARA CAMISETAS SRA.'),(13,'STUDIO'),(14,'ZARA DENIM'),(15,'ZARA BEBE'),(16,'COMPLEMENTOS SEÑORA'),(17,'ZARA COMPLEMENTOS SR'),(18,'Z. SEÑORA'),(19,'LEFTIES SEÑORA'),(20,'Z. SEÑORA COMPLEMENT'),(21,'CHICA');
