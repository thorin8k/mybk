/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_date` datetime DEFAULT NULL,
  `creation_user_id` bigint(20) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `units` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `module` bigint(20) DEFAULT NULL,
  `external_code` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK364492FF701071` (`module`),
  CONSTRAINT `FK364492FF701071` FOREIGN KEY (`module`) REFERENCES `module` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `test` VALUES (1,'2011-07-14 10:12:20',1,'TEST GLUCOSA',0x00,'GLUCOSA','mg/dl',0,1,'GLUC'),(2,'2011-07-14 10:12:20',1,'TEST HEMOGLOBINA GLICOSILADA',0x00,'HbA1c','%',0,1,'HBA1c');
