/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil_seccion` (
  `Id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `PerfilId` bigint(20) unsigned DEFAULT NULL,
  `SeccionId` bigint(20) unsigned DEFAULT NULL,
  `Read` tinyint(1) unsigned DEFAULT NULL,
  `Write` tinyint(1) unsigned DEFAULT NULL,
  `ReadOwner` tinyint(1) unsigned DEFAULT NULL,
  `WriteOwner` tinyint(1) unsigned DEFAULT NULL,
  `Deleted` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_perfil_seccion_1` (`PerfilId`),
  KEY `FK_perfil_seccion_2` (`SeccionId`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `perfil_seccion` VALUES (1,1,1,1,1,0,0,0),(3,1,3,1,1,0,0,0),(4,1,4,1,1,0,0,0),(12,2,1,1,0,0,0,0),(15,2,3,1,1,0,0,0),(16,2,4,1,1,0,1,0),(17,3,1,1,0,0,0,0),(18,3,3,0,0,0,0,0),(19,3,4,1,0,0,0,0),(20,1,5,1,1,0,0,0),(21,1,6,1,1,0,0,0),(22,1,7,1,1,0,0,0),(23,2,5,1,0,0,0,0),(24,2,6,1,1,0,0,0),(25,2,7,1,1,0,0,0),(26,3,5,1,0,0,0,0),(27,3,6,0,0,0,0,0),(28,3,7,1,0,0,0,0),(29,1,8,1,1,0,0,0),(30,2,8,0,0,0,0,0),(31,3,8,1,1,0,0,0),(32,1,9,1,1,0,0,0),(33,2,9,0,0,0,0,0),(34,3,9,1,1,0,0,0),(35,1,10,1,1,0,0,0),(36,2,10,0,0,0,0,0),(37,3,10,1,1,0,0,0);
