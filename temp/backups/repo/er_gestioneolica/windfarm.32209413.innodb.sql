/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `windfarm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `delegation_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_windfarm_delegation1` (`delegation_id`),
  CONSTRAINT `fk_windfarm_delegation1` FOREIGN KEY (`delegation_id`) REFERENCES `delegation` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `windfarm` VALUES (9,NULL,'VALDEPERO','',20),(10,NULL,'SILVARREDONDA','',20),(11,NULL,'LOMA GORDA','',20),(12,NULL,'SAN GIL','',20),(13,NULL,'PEÑA I','',20),(14,NULL,'VALDELACASA','',20),(15,NULL,'VALDELÍN','',20),(16,NULL,'SAN ESTEBAN 1A',NULL,NULL),(17,NULL,'SE 2C - CARAQUIDOYA',NULL,NULL),(18,NULL,'Codesas I',NULL,NULL),(19,NULL,'Codesas II',NULL,NULL),(20,NULL,'SE 1B - EGASTIAGA',NULL,NULL),(21,NULL,'SE 2A - AÑORBE',NULL,NULL),(22,NULL,'Montejo',NULL,NULL),(23,NULL,'Uzkita',NULL,NULL),(24,NULL,'SE 2B - OLCOZ',NULL,NULL),(25,NULL,'La Losilla',NULL,NULL),(26,NULL,'CALUENGO',NULL,NULL),(27,NULL,'Casa',NULL,NULL),(28,NULL,'Canredondo',NULL,NULL);
