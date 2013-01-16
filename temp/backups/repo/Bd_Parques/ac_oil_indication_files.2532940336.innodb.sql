/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_oil_indication_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(75) NOT NULL,
  `upload_date` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `ac_oil_indication_files` VALUES (6,'InformeExcel_113526.xls','201109130630'),(13,'prueba2.xlsx','201109201045'),(14,'infimport.xlsx','201109201058'),(15,'InformeExcel_093531.xls','201111221034'),(16,'InformeExcel_082919.xls','201111221034'),(17,'tryINF.xls','201111221037'),(18,'tryINF.xlsx','201111221040'),(19,'prueba (1).xlsx','201201040857'),(21,'pruebaModifWin.xlsx','201201041640'),(22,'Muestras hasta 16ene12.xlsx','201201200902'),(23,'Muestras hasta 16ene12 (2).xlsx','201201271008');
