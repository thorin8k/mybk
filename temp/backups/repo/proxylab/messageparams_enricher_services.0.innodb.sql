/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messageparams_enricher_services` (
  `messageparams` bigint(20) NOT NULL,
  `enricher_services` bigint(20) NOT NULL,
  PRIMARY KEY (`messageparams`,`enricher_services`),
  UNIQUE KEY `enricher_services` (`enricher_services`),
  KEY `FK288CB2192C20E1` (`messageparams`),
  KEY `FK288CB219AD6EE1D5` (`enricher_services`),
  CONSTRAINT `FK288CB2192C20E1` FOREIGN KEY (`messageparams`) REFERENCES `messageparams` (`id`),
  CONSTRAINT `FK288CB219AD6EE1D5` FOREIGN KEY (`enricher_services`) REFERENCES `enricherservice` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
