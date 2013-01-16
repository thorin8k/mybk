/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enricherservice_enricher_message_subscriptors` (
  `enricherservice` bigint(20) NOT NULL,
  `enricher_message_subscriptors` bigint(20) NOT NULL,
  PRIMARY KEY (`enricherservice`,`enricher_message_subscriptors`),
  UNIQUE KEY `enricher_message_subscriptors` (`enricher_message_subscriptors`),
  KEY `FKC83C2DAE6E98A221` (`enricher_message_subscriptors`),
  KEY `FKC83C2DAEF394024D` (`enricherservice`),
  CONSTRAINT `FKC83C2DAE6E98A221` FOREIGN KEY (`enricher_message_subscriptors`) REFERENCES `application` (`id`),
  CONSTRAINT `FKC83C2DAEF394024D` FOREIGN KEY (`enricherservice`) REFERENCES `enricherservice` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
