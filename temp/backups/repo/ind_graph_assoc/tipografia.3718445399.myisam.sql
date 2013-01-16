/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipografia` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `ruta` varchar(40) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `tipografia` VALUES (1,'arial','/arial.ttf'),(5,'arial black','/arialblk.ttf'),(6,'Luxi Sans','/luxisr.ttf'),(2,'Arial Cursiva','/ariali.ttf'),(3,'Arial Negrita','/arialb.ttf'),(4,'Arial Negrita-Cursiva','/arialbi.ttf'),(7,'Impact','/impact.ttf'),(8,'Georgia','/georgia.ttf'),(9,'Georgia Negrita','/georgiab.ttf'),(10,'Trebuchet','/trebuchet.ttf'),(11,'Trebuchet Cursiva','/trebucheti.ttf'),(12,'Trebuchet Negrita','/trebuchetb.ttf'),(13,'Trebuchet Negrita-Cursiva','/trebuchetbi.ttf'),(14,'Helvetica','/helvetica.ttf');
