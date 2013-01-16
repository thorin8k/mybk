/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cli_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `MenuUrl` varchar(75) COLLATE utf8_spanish_ci NOT NULL,
  `MenuName` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `MenuOrder` int(11) NOT NULL,
  `MenuSubSections` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `ParentId` int(11) NOT NULL,
  `OnlyMenu` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `cli_sections` VALUES (1,'User','','Usuarios',0,'',0,0),(2,'Administration','administration','Administración',0,'',0,0),(3,'AccessRules','0','Permisos',0,'',0,0),(4,'Profile','0','Perfiles',0,'',0,0),(5,'docFiles','/docFiles','Documentación',0,'',0,0),(28,'Sections','','Modulos',1,'aceites,partes,inspecciones,parques',0,1),(29,'aceites','/aceites/default/index','Aceites',1,'',28,0),(30,'partes','/partes/default/index','Partes Diarios',2,'',28,0),(33,'inspecciones','/inspecciones/default/index','Inspecciones',3,'',28,0),(34,'parques','/parques/index','Parque',2,'',0,0),(36,'calendar','/calendar/index','Calendario',3,'',0,0),(37,'alerts','/alerts/index','Alertas',4,'',0,0),(38,'parteM','/partes/default/admin&type=M','Mantenimiento',1,'',30,1),(39,'parteP','/partes/default/admin&type=P','Producción',2,'',30,1),(40,'mantStats','/partes/default/chart','Estadísticas',3,'',30,1),(41,'vibraciones','/vibraciones/default/index','Vibraciones',4,'',28,0),(42,'endoscopias','/endoscopias/default/index','Endoscopias',5,'',28,0),(43,'termografias','/termografias/default/index','Termografías',6,'',28,0),(44,'auditorias','/auditorias/default/index','Auditorías',7,'',28,0),(45,'DocFiletags','','Tags',0,'',0,0),(46,'DocTags','','Administrar Tags',0,'',0,0);
