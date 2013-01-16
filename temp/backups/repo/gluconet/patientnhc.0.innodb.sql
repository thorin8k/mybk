/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientnhc` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nhc` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `creation_user_id` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `centre` bigint(20) DEFAULT NULL,
  `patient` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK852424C4FDE78591` (`patient`),
  KEY `FK852424C4DC3E5F4F` (`centre`),
  CONSTRAINT `FK852424C4DC3E5F4F` FOREIGN KEY (`centre`) REFERENCES `centre` (`id`),
  CONSTRAINT `FK852424C4FDE78591` FOREIGN KEY (`patient`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
