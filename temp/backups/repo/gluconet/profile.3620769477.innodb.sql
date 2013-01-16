/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_date` datetime DEFAULT NULL,
  `creation_user_id` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `permissions` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `profile_type` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKED8E89A921C9849A` (`profile_type`),
  CONSTRAINT `FKED8E89A921C9849A` FOREIGN KEY (`profile_type`) REFERENCES `profile_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `profile` VALUES (1,'2011-03-23 14:05:33',1,0x00,'Administrador Total',NULL,0,1),(2,'2011-03-23 14:05:33',1,0x00,'Escritor',NULL,0,1),(3,'2011-04-28 02:01:28',1,0x00,'Lector',NULL,0,1);
