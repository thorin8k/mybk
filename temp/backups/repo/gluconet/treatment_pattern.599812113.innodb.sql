/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treatment_pattern` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_date` datetime DEFAULT NULL,
  `creation_user_id` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `is_treatment_pattern_active` bit(1) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `diabetes_episode` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKA4BE12C9DC7986BE` (`diabetes_episode`),
  CONSTRAINT `FKA4BE12C9DC7986BE` FOREIGN KEY (`diabetes_episode`) REFERENCES `diabetes_episode` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `treatment_pattern` VALUES (1,'2011-08-25 01:21:38',3,0x00,NULL,0,2),(2,'2011-08-29 14:15:58',3,0x00,NULL,0,3),(3,'2011-08-31 11:26:01',3,0x00,NULL,0,22),(4,'2011-08-31 16:24:56',3,0x00,NULL,0,6),(5,'2011-09-05 10:44:54',3,0x00,NULL,0,24),(6,'2011-10-04 16:43:24',3,0x00,NULL,0,4);
