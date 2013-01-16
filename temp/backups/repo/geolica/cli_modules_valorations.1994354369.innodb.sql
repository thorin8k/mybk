/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cli_modules_valorations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `text` varchar(70) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `module_id` (`module_id`),
  CONSTRAINT `cli_modules_valorations_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `cli_modules` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `cli_modules_valorations` VALUES (1,1,'Normal'),(2,1,'Leve'),(3,1,'Moderado'),(4,1,'Grave'),(5,1,'Peligro'),(6,2,'Bajo'),(7,2,'Medio'),(8,2,'Alto'),(9,3,'Baja'),(10,3,'Media'),(11,3,'Alta'),(12,3,'Crítica'),(13,4,'Normal'),(14,4,'Leve'),(15,4,'Moderado'),(16,4,'Grave'),(17,4,'Peligro');
