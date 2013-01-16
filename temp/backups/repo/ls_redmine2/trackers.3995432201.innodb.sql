/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trackers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `is_in_chlog` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT '1',
  `is_in_roadmap` tinyint(1) NOT NULL DEFAULT '1',
  `fields_bits` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `trackers` VALUES (1,'Errores',1,2,0,0),(2,'Tareas',1,3,1,0),(3,'Soporte',0,4,0,0),(4,'Desarrollo',0,5,1,0),(5,'Incidencia',0,6,1,0),(6,'Desplazamiento',0,7,1,0),(7,'Documentacion',0,8,1,0),(8,'Gestion',0,9,1,0),(9,'Formacion',0,10,1,0),(11,'Actualizacion',0,11,1,0),(12,'Pruebas',0,12,1,0),(13,'Reunion',0,13,1,0),(14,'Instalación Sistemas',0,14,1,0),(15,'Estudio Preliminar',0,15,1,0),(16,'BBDD',0,16,1,0),(17,'Estadisticas',0,17,1,0),(18,'Consultoria',0,18,1,0),(19,'Vacaciones',0,19,1,0),(20,'Arranque',0,20,1,0),(21,'Implantacion',0,1,1,0),(24,'Puesta en Marcha',0,21,1,0),(25,'Upgrade',0,22,1,0),(26,'Averia',0,23,1,0),(27,'Mantenimiento del Sistema',0,24,1,0),(28,'Solucion Remota',0,25,1,0),(29,'Update',0,26,1,0),(30,'Organización Laboratorio',0,27,1,0),(31,'Preparacion Seguimiento Siste',0,28,1,0),(32,'Soporte Ventas Marketing',0,29,1,0),(33,'Formacion Propia',0,30,1,0),(34,'Hotline',0,31,1,0),(35,'Roche CS-I',0,32,1,0);
