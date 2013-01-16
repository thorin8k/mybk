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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `ac_store` VALUES (1,NULL,'Almacén Pruebas','Pruebas',1);
