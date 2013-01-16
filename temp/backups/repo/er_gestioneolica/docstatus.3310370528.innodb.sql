/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `docstatus` VALUES (2,'ABIERTO',NULL),(3,'CERRADO',NULL);
