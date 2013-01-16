/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bridgedmessage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_time` datetime DEFAULT NULL,
  `destination_ip_address` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `destination_port` int(11) DEFAULT NULL,
  `payload` longtext COLLATE utf8_spanish_ci,
  `source_ip_address` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `source_mac_address` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `source_port` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
