/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `centreh` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address_id` bigint(20) DEFAULT NULL,
  `code_aux` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `creation_user_id` bigint(20) DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  `mod_user_id` bigint(20) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ref_id` bigint(20) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `centreh` VALUES (1,3,'abentechuac','2011-04-21 23:36:30',1,'2011-09-14 16:41:20',3,'Hospital Abente y Lago',3,0),(2,4,'chuachoza','2011-04-21 23:36:30',1,'2011-09-14 16:44:45',3,'Hospital de Ozzy',4,0),(3,5,'chuachcoru','2011-04-21 23:36:30',1,'2011-09-14 16:50:22',3,'Hospital A Coruña',5,0),(4,13,'HUSESP','2011-04-21 23:36:30',1,'2011-09-14 17:01:59',3,'Hospital Univeristari Son Espases',12,0),(5,2,'AUX2','2011-04-21 23:36:30',1,'2011-09-19 09:29:16',2,'Hospital Teresa Herrera',2,0),(6,8,'huvrhuvr','2011-04-21 23:36:30',1,'2011-09-19 15:29:53',4,'HUVR',8,0),(7,8,'huvrhuvr','2011-04-21 23:36:30',1,'2011-09-19 15:30:00',4,'HUVR',8,0),(8,5,'chuachcoru','2011-04-21 23:36:30',1,'2011-09-20 13:09:33',4,'Hospital A Coruñaaaaa',5,0),(9,5,'chuachcoru','2011-04-21 23:36:30',1,'2011-09-20 13:09:43',4,'Hospital A Coruña',5,0),(10,5,'chuachcoru','2011-04-21 23:36:30',1,'2011-09-20 13:09:51',4,'Hospital A Coruña',5,0);
