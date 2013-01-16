/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gi_type_desc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `incidence_id` int(11) DEFAULT NULL,
  `desc_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_type_desc_desc1` (`desc_id`),
  KEY `incidence_id` (`incidence_id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `gi_type_desc` VALUES (15,63,2),(16,63,4),(17,63,6),(67,75,9),(68,75,11),(116,33,9),(117,33,10),(118,33,12),(119,43,14),(120,43,15),(121,43,17);
