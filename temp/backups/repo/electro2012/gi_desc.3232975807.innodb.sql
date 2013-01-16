/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gi_desc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(160) COLLATE utf8_spanish_ci DEFAULT NULL,
  `text` varchar(160) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `gi_desc` VALUES (1,'5','Comprob. puntas O-D'),(2,'5','Peinar canalizac.'),(3,'5','Mecan. cuadro-prensas'),(4,'5','Pelar cables'),(5,'5','Peinar cuadro'),(6,'5','Embornar'),(7,'5','Marbetear'),(8,'5','Masa a cuadro'),(9,'4','Cable en origen'),(10,'4','Cable en destino'),(11,'4','Colocación marbetes'),(12,'4','Flejado cable'),(13,'2','Aprox. equipo'),(14,'2','Anclaje equipo'),(15,'2','Polín'),(16,'2','Puesta a masa'),(17,'2','Brazola'),(18,'2','Casquillo'),(19,'2','Embono'),(20,'2','Canaliz. principal'),(21,'2','Canaliz. secundario'),(22,'2','Soporte a techo'),(23,'2','Canaliz. a techo'),(24,'2','Manguito'),(25,'2','Marco pasacable');
