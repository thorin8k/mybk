/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicine` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_date` datetime DEFAULT NULL,
  `creation_user_id` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `medicine` VALUES (1,'2011-07-14 10:12:20',2,0x00,'LILLY','HUMULIN',0),(2,'2011-07-14 10:12:20',1,0x00,'NOVO NORDISK','NOVOLIN',0),(3,'2011-07-14 10:12:20',2,0x00,'SANOFI','LANTUS',0),(4,'2011-07-14 10:12:20',2,0x00,'SANOFI','OPTISULIN',0),(5,'2011-07-14 10:12:20',2,0x00,'ROCHE','EUGLUCON',0),(6,'2011-07-14 10:12:20',1,0x00,'AMARYL','SANOFI',0);
