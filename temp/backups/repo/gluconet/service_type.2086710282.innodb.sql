/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_date` datetime DEFAULT NULL,
  `creation_user_id` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `service_name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `short_name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `service_type` VALUES (1,'2011-07-17 07:17:20',1,0x00,1,'UROLOGIA','URO',0),(2,'2011-07-17 07:17:20',1,0x00,2,'GINECOLOGIA','GINE',0),(3,'2011-07-17 07:17:20',1,0x00,3,'TRAUMATOLOGIA','TRA',0),(4,'2011-07-17 07:17:20',1,0x00,4,'HEMATOLOGIA','HEM',0),(5,'2011-07-17 07:17:20',1,0x00,5,'NEUMOLOGIA','NEU',0),(6,'2011-07-17 07:17:20',1,0x00,6,'ONCOLOGIA','ONC',0),(7,'2011-07-17 07:17:20',1,0x00,7,'PEDIATRIA','PEDI',0);
