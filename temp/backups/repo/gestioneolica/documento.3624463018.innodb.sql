/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documento` (
  `Id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `Descripcion` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `Observaciones` text CHARACTER SET latin1,
  `ModuloId` bigint(20) unsigned DEFAULT NULL,
  `ItemId` bigint(20) unsigned DEFAULT NULL,
  `Deleted` tinyint(1) unsigned DEFAULT NULL,
  `TipoDocumentoId` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_documento_1` (`ItemId`),
  KEY `FK_documento_4` (`TipoDocumentoId`),
  KEY `FK_documento_2` (`ModuloId`),
  CONSTRAINT `FK_documento_2` FOREIGN KEY (`ModuloId`) REFERENCES `modulo` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_documento_4` FOREIGN KEY (`TipoDocumentoId`) REFERENCES `tipodocumento` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `documento` VALUES (124,'Copia de IMG_0042.JPG','testingDevs','julio testing docs',1,908,0,1),(125,'Base de datos       Gestión reuniones 16-03-10.docx','testingDevs','docx',1,908,0,10),(126,'IMG_0042.JPG','testingDevs','img',1,908,0,1),(127,'Calendario_Copias_Seguridad.xlsx','d','d',1,906,1,11),(128,'Puesta de sol.jpg','d','d',1,906,1,1);
