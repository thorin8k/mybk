/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_productunits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `ac_productunits` VALUES (1,'UNIDAD',''),(2,'LITROS',NULL),(3,'BOTE',NULL),(4,'KIT',NULL),(5,'CAJAS',NULL),(6,'FARDO',NULL);
