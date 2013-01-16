/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `title` varchar(60) NOT NULL DEFAULT '',
  `summary` varchar(255) DEFAULT '',
  `description` text,
  `author_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `comments_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `news_project_id` (`project_id`),
  KEY `index_news_on_author_id` (`author_id`),
  KEY `index_news_on_created_on` (`created_on`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `news` VALUES (1,1,'Hola','Hola','Hola vamos a comenzar a usar este programa de gestion de proyectos, a ver si resulta util y sencillo',3,'2011-01-11 16:22:57',0),(2,10,'migracion!!! a las18:00','resumen cambios','desplegado v3b5p10\r\noracle11g en cluster de 2 nodos con balanceo de carga\r\ntomcat 6\r\nen\r\n/home/taonet/apache...\r\njdk 6\r\nserver linux otic\r\nservicio se arranca y para\r\n/etc/init.d/taonet start/stop/restart\r\narchivos de config\r\n/home/taonet/resources\r\n \r\nIntegracion de demograficos con empi (habra que actualizar la)\r\nIntegracion de altas y bajasd e episodios con manacor e inca\r\n\r\nIntegracion de obtencion de ultimo calendario con inca\r\n\r\nqueda en el antiguo servidor de pro una redireccion al nuevo mientras que\r\nhp no cambie su redireccion para el ultimo calendario, el viejo pre desaparecera.',3,'2011-03-30 14:57:29',0);
