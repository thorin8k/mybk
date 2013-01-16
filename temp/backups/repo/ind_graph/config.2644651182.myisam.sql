/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `mantenimiento` tinyint(1) NOT NULL DEFAULT '0',
  `mensaje` longtext COLLATE utf8_spanish_ci NOT NULL,
  `mensajeng` longtext COLLATE utf8_spanish_ci NOT NULL,
  `enlace` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `fecha` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `config` VALUES (1,1,'Versión en pruebas, para mas información contacte aquí.','This is a Beta version, for more info contact here.','contacto.php','2009-06-19');
