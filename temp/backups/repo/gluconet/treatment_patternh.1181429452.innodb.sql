/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treatment_patternh` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_date` datetime DEFAULT NULL,
  `creation_user_id` bigint(20) DEFAULT NULL,
  `diabetes_episode_id` bigint(20) DEFAULT NULL,
  `is_treatment_pattern_active` bit(1) DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  `mod_user_id` bigint(20) DEFAULT NULL,
  `ref_id` bigint(20) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `treatment_patternh` VALUES (1,'2011-08-29 14:15:58',3,3,NULL,'2011-08-29 14:15:58',3,2,0),(2,'2011-08-31 11:26:01',3,22,NULL,'2011-08-31 11:26:01',3,3,0),(3,'2011-08-31 16:24:56',3,6,NULL,'2011-08-31 16:24:56',3,4,0),(4,'2011-09-05 10:44:54',3,24,NULL,'2011-09-05 10:44:54',3,5,0),(5,'2011-10-04 16:43:24',3,4,NULL,'2011-10-04 16:43:24',3,6,0);
