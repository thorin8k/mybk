/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_oil_indication_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(65) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `ac_oil_indication_type` VALUES (1,'Lubricante'),(2,'Grasa'),(3,'Hidráulico');
