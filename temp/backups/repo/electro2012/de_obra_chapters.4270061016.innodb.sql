/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `de_obra_chapters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chapters_code` varchar(27) NOT NULL,
  `obra_EG_id` int(11) NOT NULL,
  `jefe_equipo_id` int(11) NOT NULL,
  `encargado_id` int(11) NOT NULL,
  `title` varchar(65) DEFAULT NULL,
  `dateopened` varchar(8) DEFAULT NULL,
  `dateclosed` varchar(8) DEFAULT NULL,
  `copic` varchar(45) DEFAULT NULL,
  `operatorhours` double DEFAULT NULL,
  `bosshours` double DEFAULT NULL,
  `totalhours` double DEFAULT NULL,
  `pendinghours` double DEFAULT NULL,
  `notes` varchar(65) DEFAULT NULL,
  `totalcosthours` double DEFAULT NULL,
  `ratedhours` double DEFAULT NULL,
  `rated` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_gestobra_obra_EG` (`obra_EG_id`),
  KEY `fk_gestobra_empleado_EG1` (`jefe_equipo_id`),
  KEY `fk_gestobra_empleado_EG2` (`encargado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `de_obra_chapters` VALUES (1,'001000000000000000000000000',24515,4955,4357,'Prueba1','11/08/20','','',53.83,NULL,53.83,-53.83,'',NULL,NULL,0),(2,'002000000000000000000000000',24515,4945,5007,'Prueba3','','','',1.5,NULL,1.5,-1.5,'',NULL,NULL,0),(3,'001002000000000000000000000',24515,4681,4527,'Prueba43','','','',7,NULL,7,-7,'',NULL,NULL,0),(4,'004000000000000000000000000',24515,4649,4673,'Prueba 4','','','',NULL,NULL,NULL,NULL,'',NULL,NULL,0),(5,'005000000000000000000000000',24515,4944,4683,'Pr16','','','',NULL,NULL,NULL,NULL,'',NULL,NULL,0),(6,'001008000000000000000000000',24515,4673,4953,'asdasd','','','',NULL,NULL,NULL,NULL,'',NULL,NULL,0),(8,'001003000000000000000000000',24515,4353,4535,'PPPPPPCod','','','',NULL,NULL,10,NULL,'',NULL,NULL,0),(9,'002001000000000000000000000',24515,4673,4925,'22222222222','','','',NULL,NULL,NULL,NULL,'',NULL,NULL,0);
