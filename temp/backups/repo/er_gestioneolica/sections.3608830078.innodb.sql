/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `MenuUrl` varchar(75) COLLATE utf8_spanish_ci NOT NULL,
  `MenuName` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `MenuOrder` int(11) NOT NULL,
  `MenuSubSections` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `ParentId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `sections` VALUES (1,'Company','','',0,'',0),(2,'User','','',0,'',0),(3,'Order','order','Pedidos',1,'order,orderLine',0),(4,'Product','','',0,'',0),(5,'Delegation','','',0,'',0),(6,'OrderLine','','',0,'',0),(7,'OrderLineDelivery','','',0,'',0),(8,'OrderLineSerialNumber','','',0,'',0),(9,'InOut','inOut','Entradas/Salidas',2,'inOut,inOutLine',0),(10,'InOutLine','','',0,'',0),(11,'Stock','','',0,'',0),(12,'Store','','',0,'',0),(13,'Administration','administration','Administración',4,'administration,company,user,product,delegation,store,stock',0),(14,'Oil','oil','Muestras Aceite',3,'oil',0),(15,'OrderList','admin','Listado',2,'',3),(16,'OrderCreate','create','Crear',1,'',3),(17,'InOutList','admin','Listado',3,'',9),(18,'InOutCreate1','create&type=1','Crear Traspaso',1,'',9),(19,'InOutCreate2','create&type=2','Crear Salida',2,'',9),(20,'OilImport','import','Importar',1,'process',14),(21,'OilList','admin','Listado',2,'',14),(22,'OilReport','report','Informe',3,'',14),(23,'AccessRules','','',0,'',0),(24,'Profile','','',0,'',0),(25,'DocFiles','','',0,'',0),(26,'TurbClient','turbClient/index','Parques',4,'',14);
