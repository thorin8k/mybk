/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicine_property` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_date` datetime DEFAULT NULL,
  `creation_user_id` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `units` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `medicine_property` VALUES (1,'2011-07-14 10:12:20',1,0x01,'DOSE','MG',0),(2,'2011-07-14 10:12:20',1,0x00,'INSULIN_TYPE','',0),(3,'2011-07-14 10:12:20',1,0x00,'INSULIN_SOURCE','',0),(4,'2011-07-14 10:12:20',1,0x00,'INSULIN_START_EFFECT','H',0),(5,'2011-07-14 10:12:20',1,0x00,'INSULIN_PEAK_EFFECT','H',0),(6,'2011-07-14 10:12:20',1,0x00,'INSULIN_END_EFFECT','H',0);
