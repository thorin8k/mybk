/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `informeproduccion` (
  `Id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ParqueId` bigint(20) unsigned NOT NULL,
  `Ano` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `Deleted` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `informeproduccion` VALUES (8,3,'2010',1),(9,4,'2010',0),(10,2,'2001',1),(11,3,'2010',0),(12,5,'2010',0),(13,6,'2010',0),(14,1,'2011',1),(15,4,'2011',1),(16,5,'2011',0),(17,6,'2011',0),(18,4,'2011',0),(19,4,'2012',0),(20,5,'2012',0),(21,6,'2012',0);
