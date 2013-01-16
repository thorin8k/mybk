/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documento_h` (
  `Id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ItemId` bigint(20) unsigned DEFAULT NULL,
  `Action` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Data` text COLLATE utf8_spanish_ci,
  `Date` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `UserId` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_documento_h_1` (`ItemId`),
  CONSTRAINT `FK_documento_h_1` FOREIGN KEY (`ItemId`) REFERENCES `documento` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `documento_h` VALUES (197,124,'INS','-¿?-','2010/09/07 14:10:47',1),(198,125,'INS','-¿?-','2010/09/07 14:11:43',1),(199,126,'INS','-¿?-','2010/09/07 14:12:39',1),(200,127,'INS','-¿?-','2010/09/08 9:34:25',9),(201,127,'DEL','-¿?-','2010/09/08 9:34:48',9),(202,128,'INS','-¿?-','2010/09/08 9:35:09',9),(203,128,'DEL','-¿?-','2010/09/08 9:35:46',9);
