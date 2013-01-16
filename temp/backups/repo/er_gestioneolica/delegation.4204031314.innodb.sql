/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delegation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `value` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_delegation_company1` (`company_id`),
  CONSTRAINT `fk_delegation_company1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `delegation` VALUES (1,1,'ALDEAVIEJA','ALDEAVIEJA'),(2,1,'BELMONTE','BELMONTE'),(3,1,'BIERZO','BIERZO'),(4,1,'CALDEREROS','CALDEREROS'),(5,1,'CAMARIÑAS','CAMARIÑAS'),(6,1,'CAREON','CAREON'),(7,1,'CASTELO','CASTELO'),(8,1,'CORISCADA','CORISCADA'),(9,1,'CORZAN','CORZAN'),(10,1,'COUTO','COUTO SAN SEBASTIAN'),(11,1,'PEÑA ARMADA','PEÑA ARMADA'),(12,1,'SAN ANDRES','SAN ANDRES'),(13,2,'CASA','CASA'),(14,2,'CODESAS','CODESAS I Y II'),(15,2,'MALAGON','MALAGON I Y II'),(16,2,'SILVARREDONDA','SILVARREDONDA'),(17,2,'VALDEPERO','VALDEPERO'),(20,5,'GNFR','Gas Natural Fenosa Renovables');
