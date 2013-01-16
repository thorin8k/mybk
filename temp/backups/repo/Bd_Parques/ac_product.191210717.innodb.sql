/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference1` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `reference2` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `productunits_id` int(11) NOT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_productunits1` (`productunits_id`),
  CONSTRAINT `fk_product_productunits1` FOREIGN KEY (`productunits_id`) REFERENCES `ac_productunits` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `ac_product` VALUES (1,'1','1','Artículo de prueba',1,12.5),(2,'1235','112345','asdfasdf',2,12);
