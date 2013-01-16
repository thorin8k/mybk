/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proxylab_module` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `deleted` int(11) DEFAULT NULL,
  `module_description` longtext COLLATE utf8_spanish_ci,
  `module_name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `view_token` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `parent` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKADC8B24C7BF20185` (`parent`),
  CONSTRAINT `FKADC8B24C7BF20185` FOREIGN KEY (`parent`) REFERENCES `proxylab_module` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `proxylab_module` VALUES (1,0,'Configuraci','Setup',1,'',NULL),(2,0,'Aplicaciones','Applications',1,'applicationConfig',1),(3,0,'Canales','Channels',2,'channelConfig',1),(4,0,'Jdbc','JdbcInput',3,'jdbcInputConfig',1),(5,0,'Transformaciones','Transformations',4,'transformationConfig',1),(6,0,'Parametros','Params',5,'paramsConfig',1),(7,0,'Monitorizaci','Monitoring',2,'',NULL),(8,0,'Entrada','Input',1,'inputMonitor',7),(9,0,'Salida','Output',2,'outputMonitor',7),(10,0,'Suscriptores','Subscribers',6,'subscribersConfig',1),(11,0,'Bridged','Bridged',3,'bridgedMonitor',7),(12,0,'Respuesta','Response',4,'responseMonitor',7),(13,0,'Servicios enriquecimiento mensajes','Enricher services',7,'enricherServicesConfig',1),(14,0,'Transformation Workbench','Transformation workbench',8,'transformationWorkbench',1),(15,0,'Output Test Workbench','Output Test Workbench',9,'outputTestWorkbench',1);
