/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `centre` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code_aux` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `creation_user_id` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `address` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKAEB2CDDBD36EE76F` (`address`),
  CONSTRAINT `FKAEB2CDDBD36EE76F` FOREIGN KEY (`address`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `centre` VALUES (2,'AUX2','2011-04-21 23:36:30',1,0x00,'Hospital Teresa Herrera',0,2),(3,'abentechuac','2011-04-21 23:36:30',1,0x00,'Hospital Abente y Lago',0,3),(5,'chuachcoru','2011-04-21 23:36:30',1,0x00,'Hospital A Coruña',2,5),(8,'huvrhuvr','2011-04-21 23:36:30',1,0x00,'HUVR',0,8),(12,'HUSESP','2011-04-21 23:36:30',1,0x00,'Hospital Univeristari Son Espases',0,13),(13,'fnamacor.ibsalut','2011-04-21 23:36:30',1,0x00,'Hospital Manacor',0,14),(14,'XXX','2011-04-21 23:36:30',1,0x00,'HUPR',0,28);
