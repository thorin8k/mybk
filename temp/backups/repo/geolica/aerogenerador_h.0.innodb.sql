/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aerogenerador_h` (
  `Id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ItemId` bigint(20) unsigned DEFAULT NULL,
  `Action` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Data` text COLLATE utf8_spanish_ci,
  `Date` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `UserId` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_aerogenerador_h_1` (`ItemId`),
  CONSTRAINT `FK_aerogenerador_h_1` FOREIGN KEY (`ItemId`) REFERENCES `aerogenerador` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
