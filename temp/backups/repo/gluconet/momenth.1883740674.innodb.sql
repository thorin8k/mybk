/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `momenth` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `creation_user_id` bigint(20) DEFAULT NULL,
  `end_time` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  `mod_user_id` bigint(20) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ref_id` bigint(20) DEFAULT NULL,
  `start_time` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `momenth` VALUES (1,'D+2','2011-04-04 10:02:34',NULL,'2008-01-01T11:00:00','2011-09-19 12:17:12',4,'2H DESPUES DESAYUNO',3,'2008-01-01T10:00:00',0),(2,'D+2','2011-04-04 10:02:34',NULL,'2008-01-01T11:00:00','2011-09-19 13:40:14',3,'2H DESPUES DESAYUNO',3,'2008-01-01T10:00:00',0),(3,'D+2','2011-04-04 10:02:34',NULL,'2008-01-01T11:00:00','2011-09-19 13:40:32',3,'2H DESPUES DESAYUNO',3,'2008-01-01T10:00:00',0),(4,'D+2','2011-04-04 10:02:34',NULL,'2008-01-01T11:00:00','2011-09-19 13:41:04',3,'2H DESPUES DESAYUNO',3,'2008-01-01T10:01:00',0),(5,'D+2','2011-04-04 10:02:34',NULL,'2008-01-01T11:00:00','2011-09-19 13:41:18',3,'2H DESPUES DESAYUNO',3,'2008-01-01T10:00:00',0),(6,'D+2','2011-04-04 10:02:34',NULL,'2008-01-01T11:00:00','2011-09-19 13:42:48',3,'2H DESPUES DESAYUNO',3,'2008-01-01T10:00:00',0),(7,'D+2','2011-04-04 10:02:34',NULL,'11:00','2011-09-19 13:43:28',3,'2H DESPUES DESAYUNO',3,'10:00',0);
