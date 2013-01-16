/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `value` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `field_list` VALUES (1,'Color','{idcolor}'),(2,'Precio1','{precio}'),(3,'Decimal1','{decimal}'),(4,'Precio2','{precio2}'),(5,'Decimal2','{decimal}'),(6,'Precio3','{precio3}'),(7,'Decimal3','{decimal3}'),(8,'Precio4','{precio4}'),(9,'Decimal4','{decimal4}'),(10,'Precio5','{precio5}'),(11,'Decimal5','{decimal5}'),(12,'Destino','{destino}'),(13,'Proveedor','{idproveedor}'),(14,'Seccion','{seccion}'),(15,'Temporada','{temporada}'),(16,'Lotes','{lotes}'),(17,'Unidades','{unidades}'),(18,'Talla','{talla}'),(19,'TextoTalla','{texto}'),(20,'Código','{codigo}'),(21,'Num Código','{codenum}'),(22,'TallaUSA','{tallaUSA}'),(23,'TallaMEX','{tallaMEX}'),(24,'TallaUK','{tallaUK}'),(25,'TallaIT','{tallaIT}'),(26,'Simb. Euro','{euro}'),(27,'Simb. Dolar','{dolar}'),(28,'Simb. Yen','{yen}'),(29,'Simb. Libra','{libra}'),(30,'Simb. Israel','{israel}'),(31,'Artículo','{articulo}'),(32,'TallaSurtido','{tallaSurt}'),(33,'Total Surtido','{surtTotal}'),(34,'Tallas Surtido','{surtTallas}'),(35,'Desglose Surtido','{surtPacks}'),(36,'Surtidos por Talla','{surtUnits}'),(37,'Calidad','{calidad}'),(38,'Letras Tallas','{letrasTallas}'),(39,'Talla Niños','{tallaChild}'),(40,'Medida Niños','{medidaChild}');
