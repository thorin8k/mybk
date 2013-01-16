/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gi_conection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `equipment_name` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `wire_name` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `source_dest` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tips_conection` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `section` varchar(160) COLLATE utf8_spanish_ci DEFAULT NULL,
  `comments` varchar(160) COLLATE utf8_spanish_ci DEFAULT NULL,
  `incidence_id` int(11) NOT NULL,
  `start_hour` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `end_hour` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_conection_incidence1` (`incidence_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `gi_conection` VALUES (1,'asdf','asdf','1','asdf','asdf','asdfasd',63,'1200','1300'),(2,'','','1','','','',108,'',''),(3,'','','1','','','',114,'','');
