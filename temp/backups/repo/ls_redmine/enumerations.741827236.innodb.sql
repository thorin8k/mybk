/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enumerations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `position` int(11) DEFAULT '1',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `project_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_enumerations_on_project_id` (`project_id`),
  KEY `index_enumerations_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `enumerations` VALUES (1,'Documentación de usuario',1,0,'DocumentCategory',1,NULL,NULL),(2,'Documentación técnica',2,0,'DocumentCategory',1,NULL,NULL),(3,'Baja',1,0,'IssuePriority',1,NULL,NULL),(4,'Normal',2,1,'IssuePriority',1,NULL,NULL),(5,'Alta',3,0,'IssuePriority',1,NULL,NULL),(6,'Urgente',4,0,'IssuePriority',1,NULL,NULL),(7,'Inmediata',5,0,'IssuePriority',1,NULL,NULL),(8,'Diseño',1,0,'TimeEntryActivity',1,NULL,NULL),(9,'Desarrollo',2,0,'TimeEntryActivity',1,NULL,NULL),(10,'Soporte',3,0,'TimeEntryActivity',1,NULL,NULL),(11,'Pruebas',4,0,'TimeEntryActivity',1,NULL,NULL),(13,'Desplazamiento',5,0,'TimeEntryActivity',1,NULL,NULL),(14,'Formacion',6,0,'TimeEntryActivity',1,NULL,NULL),(15,'Reunion',7,0,'TimeEntryActivity',1,NULL,NULL),(16,'Implantacion',8,0,'TimeEntryActivity',1,NULL,NULL),(17,'Configuracion',9,0,'TimeEntryActivity',1,NULL,NULL),(18,'Documentacion',10,0,'TimeEntryActivity',1,NULL,NULL),(19,'Parametrización Estadísticas',11,0,'TimeEntryActivity',1,NULL,NULL),(20,'Explotación de datos',12,0,'TimeEntryActivity',1,NULL,NULL),(21,'SQL tunning',13,0,'TimeEntryActivity',1,NULL,NULL),(22,'Gestion',14,0,'TimeEntryActivity',1,NULL,NULL);
