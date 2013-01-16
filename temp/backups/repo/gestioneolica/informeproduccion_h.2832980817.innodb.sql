/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `informeproduccion_h` (
  `Id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ItemId` bigint(20) unsigned NOT NULL,
  `Action` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `Data` text COLLATE utf8_spanish_ci NOT NULL,
  `Date` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `UserId` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_informeproduccion_h_1` (`ItemId`),
  CONSTRAINT `FK_informeproduccion_h_1` FOREIGN KEY (`ItemId`) REFERENCES `informeproduccion` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `informeproduccion_h` VALUES (9,8,'INS','-¿?-','2010/08/02 13:13:57',9),(10,8,'DEL','-¿?-','2010/08/06 19:05:31',9),(11,10,'INS','-¿?-','2010/08/11 9:28:11',1),(12,10,'DEL','-¿?-','2010/08/11 9:29:07',1),(13,8,'DEL','-¿?-','2010/08/11 10:08:30',8),(14,11,'INS','-¿?-','2010/08/11 10:10:21',8),(15,12,'INS','-¿?-','2010/08/11 13:07:29',8),(16,13,'INS','-¿?-','2010/08/11 13:27:42',8),(17,14,'INS','-¿?-','2011/01/18 12:47:48',1),(18,14,'DEL','-¿?-','2011/01/18 13:01:05',1),(19,15,'INS','-¿?-','2011/02/09 14:29:16',6),(20,16,'INS','-¿?-','2011/02/09 14:48:51',6),(21,17,'INS','-¿?-','2011/03/21 16:06:46',6),(22,15,'DEL','-¿?-','2011/04/13 12:35:35',6),(23,18,'INS','-¿?-','2011/04/13 12:46:00',6),(24,19,'INS','-¿?-','2012/02/07 12:33:34',6),(25,20,'INS','-¿?-','2012/02/07 15:09:23',6),(26,21,'INS','-¿?-','2012/02/07 15:14:35',6);
