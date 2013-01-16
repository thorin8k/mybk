/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `de_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `MenuUrl` varchar(65) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `MenuName` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `MenuOrder` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `MenuSubSections` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `ParentId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `de_sections` VALUES (1,'obra','obra','Obras','1','obra,obraChapters,giIncidence,tracing,doDailyReport',0),(2,'administration','administration','Administración','1','administration,doDelegation,doMaterial,giIncidenceType,giClientPersonAuth,giRework,giWorkerCategory,giDesc,accessRules',0),(3,'Incidence','0','','','',0),(4,'ChaptersMat','0','','','',0),(5,'DailyReport','0','','','',0),(6,'Delegation','0','','','',0),(7,'Material','0','','','',0),(8,'ObraChapters','0','','','',0),(9,'OT','0','','','',0),(11,'RevPartes','doDailyReport/admin','Revisión Partes','2','',1),(12,'ListObra','admin','Listado Obras','1','',1),(13,'RevObras','obraChapters/index','Revisión Obras','3','',1),(14,'RevInc','giIncidence/admin','Revisión Incidencias','4','',1),(15,'AccessRules','0','','','',0),(16,'Profile','0','','','',0),(17,'DocFiles','','','','',0);
