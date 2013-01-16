/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cli_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `default_tags` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `view_name` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `cli_modules` VALUES (1,'auditorias','1,2,23,15,14','Auditorias'),(2,'vibraciones','19,20,23,24,15,14','Vibraciones'),(3,'termografias','19,23,15,14','Termografías'),(4,'endoscopias','23,24,14','Endoscopias');
