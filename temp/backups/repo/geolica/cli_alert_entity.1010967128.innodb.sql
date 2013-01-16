/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cli_alert_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `view_name` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `cli_alert_entity` VALUES (1,'auditoria','Auditoria'),(2,'vibracion','Vibración'),(3,'termografia','Termografía'),(4,'endoscopia','Endoscopia');
