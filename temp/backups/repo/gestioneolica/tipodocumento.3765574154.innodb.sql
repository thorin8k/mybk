/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipodocumento` (
  `Id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `RutaIcono` varchar(100) DEFAULT NULL,
  `Deleted` tinyint(1) unsigned DEFAULT NULL,
  `Visualizable` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `tipodocumento` VALUES (1,'JPG','Documento de imágen JPG.','/images/icon_picture.png',0,1),(2,'DOC','Documento de Word.','/images/icon_word.png',0,0),(3,'XLS','Documento de Excel.','/images/icon_excel.png',0,0),(4,'PDF','Documento en formato Pdf.','/images/icon_pdf.png',0,0),(5,'ZIP','Archivo comprimido en formato Zip.','/images/icon_zip.png',0,0),(6,'TXT','Documento de texto simple.','/images/icon_txt.png',0,0),(7,'PNG','Documento de imágen PNG.','/images/icon_picture.png',0,1),(8,'BMP','Documento de imágen BMP.','/images/icon_picture.png',0,1),(9,'GIF','Documento de imágen GIF.','/images/icon_picture.png',0,1),(10,'DOCX','Documento de Word 2007.','/images/icon_word.png',0,0),(11,'XLSX','Documento de Excel 2007.','/images/icon_excel.png',0,0);
