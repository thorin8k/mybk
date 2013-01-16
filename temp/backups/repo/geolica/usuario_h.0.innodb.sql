/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_h` (
  `Id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ItemId` bigint(20) unsigned DEFAULT NULL,
  `Action` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Data` text COLLATE utf8_spanish_ci,
  `Date` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `UserId` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_usuario_h_1` (`ItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
