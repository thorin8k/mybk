/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trackers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `is_in_chlog` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT '1',
  `is_in_roadmap` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `trackers` VALUES (1,'Errores',1,1,0),(2,'Tareas',1,2,1),(3,'Soporte',0,3,0),(4,'Desarrollo',0,4,1),(5,'Incidencia',0,5,1),(6,'Desplazamiento',0,6,1),(7,'Documentacion',0,7,1),(8,'Gestion',0,8,1),(9,'Formacion',0,9,1),(11,'Actualizacion',0,10,1),(12,'Pruebas',0,11,1),(13,'Reunion',0,12,1),(14,'Instalación Sistemas',0,13,1),(15,'Estudio Preliminar',0,14,1),(16,'BBDD',0,15,1),(17,'Estadisticas',0,16,1),(18,'Consultoria',0,17,1),(19,'Vacaciones',0,18,1),(20,'Arranque',0,19,1);
