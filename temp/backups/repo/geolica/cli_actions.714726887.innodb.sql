/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cli_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `ViewName` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `cli_actions` VALUES (1,'index','Entrar'),(2,'view','Ver'),(5,'create','Crear'),(6,'update','Modificar'),(7,'admin','Listados'),(8,'delete','Borrar'),(10,'report','Informe'),(11,'export2Pdf','Exportar a PDF'),(12,'export2Xls','Exportar a Excel'),(15,'export2Doc','Exportar a Word'),(16,'chart','Gráfica'),(17,'downFile','Descarga Archivos');
