/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicine_presentationh` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `creation_user_id` bigint(20) DEFAULT NULL,
  `generic_name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `medicine_id` bigint(20) DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  `mod_user_id` bigint(20) DEFAULT NULL,
  `presentation_name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ref_id` bigint(20) DEFAULT NULL,
  `units` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `via` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
