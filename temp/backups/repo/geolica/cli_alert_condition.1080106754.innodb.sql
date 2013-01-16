/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cli_alert_condition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cli_alert_entity_id` int(11) NOT NULL,
  `condition` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `cli_alert_condition` VALUES (1,1,'> 3'),(2,2,'> 7'),(3,3,'> 10'),(4,4,'> 15');
