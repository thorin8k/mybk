/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `codigo` int(10) unsigned NOT NULL,
  `descipcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `valor` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `config` VALUES (1,'DSN Conexion Gestion Integral','GI_Personal'),(2,'Importacion Telematel Cierre Obras (Codigo Obra)','1'),(3,'Importacion Telematel Cierre Obras (Nombre Obra)','2'),(4,'Importacion Telematel Cierre Obras (Referencia Interna)','3'),(5,'Importacion Telematel Cierre Obras (Codigo Cliente)','5'),(6,'Importacion Telematel Cierre Obras (Nombre Cliente)','6'),(7,'Importacion Telematel Cierre Obras (Presupuesto)','8'),(8,'Importacion Telematel Cierre Obras (Numero Horas)','9'),(9,'Importacion Telematel Cierre Obras (Coste Materiales)','10'),(10,'Importacion Telematel Cierre Obras (Facturado)','11'),(11,'Importacion Telematel Cierre Obras (Codigo Responsable)','7'),(12,'Importacion Telematel Cierre Obras (Referencia Cliente)','4'),(13,'DSN Telematel','tlmplus;UID=userSQL;PWD=userSQL;'),(14,'DSN Telematel 1','tlmplus1;UID=userSQL;PWD=userSQL;'),(15,'DSN Telematel 2','tlmplus2;UID=userSQL;PWD=userSQL;');
