/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jdbcinput` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `columns` longtext COLLATE utf8_spanish_ci,
  `enabled` int(11) DEFAULT NULL,
  `key_column` longtext COLLATE utf8_spanish_ci,
  `message_template` longtext COLLATE utf8_spanish_ci,
  `message_type` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `jdbc_input_name` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `params` longtext COLLATE utf8_spanish_ci,
  `polling_frenquency` bigint(20) DEFAULT NULL,
  `query` longtext COLLATE utf8_spanish_ci,
  `start_time` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `update_status_query` longtext COLLATE utf8_spanish_ci,
  `xml_template` bit(1) DEFAULT NULL,
  `source` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKE75949AF30694F52` (`source`),
  CONSTRAINT `FKE75949AF30694F52` FOREIGN KEY (`source`) REFERENCES `application` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
