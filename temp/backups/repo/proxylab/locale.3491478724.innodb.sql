/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locale` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_mask` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `lang_code` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `lang_name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `locale` VALUES (1,'dd/MM/yyyy','es','Espa');
