/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gi_lying` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_circuit_wire` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `source_equipment` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dest_equipment` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `conector` tinyint(1) DEFAULT NULL,
  `m_lying` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `worked_hours` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `comments` varchar(160) COLLATE utf8_spanish_ci DEFAULT NULL,
  `incidence_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_lying_incidence1` (`incidence_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `gi_lying` VALUES (1,'asdf','asdf','asdfasdfasffff',1,'asdfasdfa','asdfasdf','asdfasdf',33),(2,'','','',1,'','','ffffffffffffffff',75),(3,'','','',1,'','','asdf',79),(4,'','','',0,'','','',113);
