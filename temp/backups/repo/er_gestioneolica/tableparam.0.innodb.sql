/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tableparam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `field` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `param` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
