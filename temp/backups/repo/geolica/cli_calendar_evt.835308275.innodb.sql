/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cli_calendar_evt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_inicio` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_fin` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `time_inicio` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `time_fin` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `client_id` int(11) NOT NULL,
  `comments` text COLLATE utf8_spanish_ci NOT NULL,
  `title` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `sended` tinyint(1) NOT NULL,
  `sended_to` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `cli_calendar_evt` VALUES (1,'2012-10-16','2012-10-16','','',1,'Aaaaaa','abc',0,''),(4,'2012-10-18','2012-10-19','','',1,'asdf','123',0,''),(5,'2012-10-17','2012-10-17','','',3,'','asdf',0,''),(6,'2012-11-06','2012-11-06','','',5,'Texto de prueba','asdf',0,''),(9,'2012-11-13','2012-11-13','','',1,'asdf','Prueba',0,'');
