/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_delegation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `value` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_delegation_company1` (`company_id`),
  CONSTRAINT `fk_delegation_company1` FOREIGN KEY (`company_id`) REFERENCES `ac_company` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `ac_delegation` VALUES (1,1,'ALDEAVIEJA',NULL),(2,1,'BELMONTE',NULL),(3,5,'Prueba','1'),(4,5,'Prueba2',''),(8,5,'Cliente de Prueba','');
