/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_userh` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `centre_id` bigint(20) DEFAULT NULL,
  `creation_user_id` bigint(20) DEFAULT NULL,
  `device_login` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `languaje_id` bigint(20) DEFAULT NULL,
  `login` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  `mod_user_id` bigint(20) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `profile_id` bigint(20) DEFAULT NULL,
  `ref_id` bigint(20) DEFAULT NULL,
  `surname1` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `surname2` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `app_userh` VALUES (1,2,1,'DNS0002',NULL,NULL,'2011-09-06 10:51:49',3,'Gervasio','xxx',1,2,'Lopez','Dos Santos',0),(2,2,3,NULL,NULL,NULL,'2011-09-13 12:46:43',3,'Sheldon Lee','xxx',1,4,'Cooper','',0),(3,3,3,NULL,NULL,NULL,'2011-09-13 12:47:59',3,'Lars','xxx',3,5,'Ulrich','v',0),(4,3,3,NULL,NULL,NULL,'2011-09-13 12:48:06',3,'Lars','xxx',3,5,'Ulrich','visc',0),(5,3,3,NULL,NULL,NULL,'2011-09-14 18:30:53',3,'Lars','xxx',3,5,'Ulrich','visc',0),(6,8,1,'DNS0001',NULL,NULL,'2011-09-14 18:31:13',3,'Javier','xxx',1,1,'Roman','La_huerta',0);
