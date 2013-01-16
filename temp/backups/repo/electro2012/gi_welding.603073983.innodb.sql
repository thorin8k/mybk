/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gi_welding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `block` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `place` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ref_design` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `worked_hours` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `machine_num` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `incidence_id` int(11) NOT NULL,
  `new_work` int(11) NOT NULL,
  `comments` text COLLATE utf8_spanish_ci,
  PRIMARY KEY (`id`),
  KEY `fk_welding_incidence1` (`incidence_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `gi_welding` VALUES (1,'adf','fffff','','','','',43,2,'jjjjjjj'),(10,'asdf','asdf','asdf','asdf','asd','f',97,1,''),(11,'','','','','','',102,1,''),(12,'','','','','','',111,1,'');
