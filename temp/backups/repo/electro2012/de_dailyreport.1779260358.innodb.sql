/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `de_dailyreport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empleado_EG_id` int(11) NOT NULL,
  `obra_chapters_id` int(11) NOT NULL,
  `starthour` varchar(4) DEFAULT NULL,
  `endhour` varchar(4) DEFAULT NULL,
  `hours` double DEFAULT NULL,
  `date` varchar(8) DEFAULT NULL,
  `comment` varchar(65) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_dailyreport_empleado_EG1` (`empleado_EG_id`),
  KEY `fk_dailyreport_obra_chapters1` (`obra_chapters_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `de_dailyreport` VALUES (2,4437,2,'1000','1130',1.5,'20110905','Prueba'),(3,4353,1,'1001','1100',0.83,'20200909','prueba'),(4,4750,3,'','',2,'20110909',''),(6,5128,1,'','',3,'20110907',''),(11,4320,3,'1200','1700',5,'20111104','Prueba de partes ');
