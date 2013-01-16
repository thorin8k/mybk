/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lab_test` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_date` datetime DEFAULT NULL,
  `creation_user_id` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `num_res_to_outof_rng` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `lab_test` VALUES (1,'2011-03-23 14:05:33',1,0x00,'TEST OSULLIVAN',1,1),(2,'2011-03-23 14:05:33',1,0x00,'CURVA DE GLUCOSA LARGA',1,2),(3,'2011-03-23 14:05:33',1,0x00,'CURVA DE GLUCOSA CORTA',1,2);
