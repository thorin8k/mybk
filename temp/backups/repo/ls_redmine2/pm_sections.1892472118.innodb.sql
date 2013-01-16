/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pm_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `MenuUrl` varchar(75) COLLATE utf8_spanish_ci NOT NULL,
  `MenuName` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `MenuOrder` int(11) NOT NULL,
  `MenuSubSections` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `ParentId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `pm_sections` VALUES (1,'pmExpenses','','Gestión',1,'',0),(2,'expList','/pmExpenses/admin','Gastos',2,'',4),(3,'expAdd','/pmExpenses/create','Añadir Gasto',3,'',1),(4,'inform','','Informes',1,'',0),(6,'addExtended','/pmExpenses/createEx','Añadir por Tiempo',4,'',1),(7,'administration','administration','Administración',5,'',0);
