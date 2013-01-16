/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `values` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `delegation_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `delegation_id` (`delegation_id`),
  CONSTRAINT `ac_store_ibfk_1` FOREIGN KEY (`delegation_id`) REFERENCES `ac_delegation` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `ac_store` VALUES (1,NULL,'CORISCADA','2',1),(2,NULL,'PruebaTraspaso','',1),(3,NULL,'Prueba','123',2),(4,NULL,'asdf','123',1);
