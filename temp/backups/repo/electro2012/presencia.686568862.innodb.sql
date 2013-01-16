/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empleado_id` int(11) NOT NULL,
  `fecha` varchar(19) COLLATE utf8_spanish_ci NOT NULL,
  `horainicio` varchar(19) COLLATE utf8_spanish_ci NOT NULL,
  `horafin` varchar(19) COLLATE utf8_spanish_ci NOT NULL,
  `equipo` varchar(45) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `cantidad` float NOT NULL DEFAULT '0',
  `estado` int(10) unsigned NOT NULL DEFAULT '0',
  `turno` varchar(2) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`empleado_id`),
  KEY `fk_presencia_empleado1` (`empleado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `presencia` VALUES (1,4247,'2010-09-07 10:17:54','2010-09-07 10:17:54','2010-09-07 10:17:54','',0,0,''),(2,4247,'2010-09-07 10:17:57','2010-09-07 10:17:57','2010-09-07 10:17:57','',0,0,''),(3,4247,'2010-09-07 10:17:58','2010-09-07 10:17:58','2010-09-07 10:17:58','',0,0,''),(4,4247,'2010-09-07 10:17:59','2010-09-07 10:17:59','2010-09-07 10:17:59','',0,0,''),(5,4247,'2010-09-08 11:55:14','2010-09-08 11:55:14','2010-09-08 11:55:14','',0,0,''),(6,4247,'2010-09-08 11:55:22','2010-09-08 11:55:22','2010-09-08 11:55:22','',0,0,''),(7,4247,'2010-09-08 11:56:59','2010-09-08 11:56:59','2010-09-08 11:56:59','',0,0,''),(8,4247,'2010-09-08 11:57:07','2010-09-08 11:57:07','2010-09-08 11:57:07','',0,0,''),(9,4247,'2010-09-08 11:57:44','2010-09-08 11:57:44','2010-09-08 11:57:44','',0,0,''),(10,4261,'2010-09-08 12:02:31','2010-09-08 12:02:31','2010-09-08 12:02:31','',0,0,'Ma');
