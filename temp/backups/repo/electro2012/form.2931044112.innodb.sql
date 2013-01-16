/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form` (
  `idform` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `menu` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`idform`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `form` VALUES (1,'frmMain','','',0),(2,'Employee_Management','','EmpleadosToolStripMenuItem1',0),(3,'GieExport','','GieExportToolStripMenuItem',0),(4,'GieImport','','GIEImportToolStripMenuItem',0),(5,'GieMant','','GIEMantToolStripMenuItem',0),(6,'Splash_Screen','','',0),(7,'Login_Form','','',0),(8,'SupplierIncidence','','GestionIncidenciasToolStripMenuItem',0),(9,'SupplierIncidenceReport','','InformeIncidenciasToolStripMenuItem',0),(10,'SupplierIncidenceSearch','','SupplierIncidenceSearchToolStripMenuItem',0),(11,'SupplierManagement','','ProveedoresToolStripMenuItem1',0),(12,'SupplierOrder','','SupplierOrderToolStripMenuItem',0),(13,'NominaImport','Importacion Fichero de Nominas de Asesoria','ImportacionNominasToolStripMenuItem',0),(14,'CentroCosteImport','Importacion Fichero de Reunion de Personal con Centros de Coste','CentroCosteImportToolStripMenuItem',0),(15,'Cliente_List','Listado de Clientes','ClientesToolStripMenuItem1',0),(16,'AboutBox','a','AcercaDeToolStripMenuItem',0),(17,'AlmacenList','1','AlmacenToolStripMenuItem',0);
