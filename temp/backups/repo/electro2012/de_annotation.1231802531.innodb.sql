/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `de_annotation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obra_chapter_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  `clasification_id` int(11) NOT NULL,
  `annotation_type_id` int(11) NOT NULL,
  `datecreated` varchar(8) DEFAULT NULL,
  `dateclosed` varchar(8) DEFAULT NULL,
  `code` varchar(15) DEFAULT NULL,
  `description` varchar(65) DEFAULT NULL,
  `refclient` varchar(25) DEFAULT NULL,
  `totalhours` int(11) DEFAULT NULL,
  `annotationhours` int(11) DEFAULT NULL,
  `tracinghours` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_annotation_obra_chp1` (`obra_chapter_id`),
  KEY `fk_annotation_empleado_EG1` (`created_by_id`),
  KEY `fk_annotation_clasification1` (`clasification_id`),
  KEY `fk_annotation_annotation_type1` (`annotation_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `de_annotation` VALUES (5,1,4997,1,1,'20110811','20110923','123','','123',NULL,NULL,NULL);
