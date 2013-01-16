/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `de_tracing_cost_mat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracing_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tracing_cost_mat_tracing1` (`tracing_id`),
  KEY `fk_tracing_cost_mat_material1` (`material_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `de_tracing_cost_mat` VALUES (1,1,1,323);
