/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `creation_user_id` bigint(20) DEFAULT NULL,
  `end_time` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `start_time` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `moment` VALUES (1,'AD','2011-04-04 10:02:34',NULL,'08:30',0x00,'ANTES DESAYUNO','07:00',0),(2,'D+1','2011-04-04 10:02:34',NULL,'10:00',0x00,'1H DESPUES DESAYUNO','09:00',0),(3,'D+2','2011-04-04 10:02:34',NULL,'11:00',0x00,'2H DESPUES DESAYUNO','10:00',4),(4,'ACo','2011-04-04 10:02:34',NULL,'13:00',0x00,'ANTES COMIDA','11:00',0),(5,'Co1','2011-04-04 10:02:34',NULL,'16:00',0x00,'1H DESPUES COMIDA','15:00',0),(6,'Co2','2011-04-04 10:02:34',NULL,'17:00',0x00,'2H DESPUES COMIDA','16:00',0),(7,'AM','2011-04-04 10:02:34',NULL,'18:00',0x00,'ANTES MERIENDA','17:00',0),(8,'ACe','2011-04-04 10:02:34',NULL,'21:00',0x00,'ANTES CENA','18:00',0),(9,'Ce1','2011-04-04 10:02:34',NULL,'23:00',0x00,'1H DESPUES CENA','22:00',0),(10,'Ce2','2011-04-04 10:02:34',NULL,'00:00',0x00,'2H DESPUES CENA','23:00',0),(11,'MA','2011-04-04 10:02:34',NULL,'07:00',0x00,'MADRUGADA','00:00',0),(12,'EX','2011-04-04 10:02:34',NULL,NULL,0x00,'EXTRA',NULL,0);
