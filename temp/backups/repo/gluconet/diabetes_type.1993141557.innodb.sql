/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diabetes_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_date` datetime DEFAULT NULL,
  `creation_user_id` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `diabetes_type` VALUES (1,'2011-07-17 07:17:20',1,0x00,'TIPO 1',0),(2,'2011-07-17 07:17:20',1,0x00,'TIPO 2',0),(3,'2011-07-17 07:17:20',1,0x00,'GESTACIONAL',0),(4,'2011-07-17 07:17:20',1,0x00,'INSIPIDA',0),(5,'2011-07-17 07:17:20',1,0x00,'MODY',0),(6,'2011-07-17 07:17:20',1,0x00,'RENAL',0),(7,'2011-07-17 07:17:20',1,0x00,'CISTINOSIS O AMINO-DIABETES',0),(8,'2011-07-17 07:17:20',1,0x00,'FOSFATO-DIABETES',0),(9,'2011-07-17 07:17:20',1,0x00,'PREDIABETES',0);
