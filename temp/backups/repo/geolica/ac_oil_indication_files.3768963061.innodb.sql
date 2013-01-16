/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_oil_indication_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(75) CHARACTER SET latin1 NOT NULL,
  `upload_date` varchar(12) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `ac_oil_indication_files` VALUES (72,'Muestras Aceite y Grasa_WEB_ 09_05_2012.xlsx','201205221140'),(80,'Muestras Hidráulico Freno_Palas_WEB_ 05_06_2012.xlsx','201206051644'),(81,'WEB ElectroRayma_14_09_2012.xlsx','201210181726'),(84,'testAceites.xlsx','201210181816'),(85,'WEB ElectroRayma_12_12_2012-Codesas I_HID.xlsx','201212131103');
