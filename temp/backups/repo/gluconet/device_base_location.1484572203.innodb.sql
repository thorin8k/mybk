/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_base_location` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_date` datetime DEFAULT NULL,
  `creation_user_id` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `mac_address` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `floor` bigint(20) DEFAULT NULL,
  `service_type` bigint(20) DEFAULT NULL,
  `device_code` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKC385073A70C4661A` (`service_type`),
  KEY `FKC385073AFF8DB563` (`floor`),
  CONSTRAINT `FKC385073A70C4661A` FOREIGN KEY (`service_type`) REFERENCES `service_type` (`id`),
  CONSTRAINT `FKC385073AFF8DB563` FOREIGN KEY (`floor`) REFERENCES `build_floor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `device_base_location` VALUES (1,'2011-03-03 00:00:00',1,0x00,'10:FE:A4:F1:5D',1,1,1,NULL),(2,'2011-03-03 00:00:00',1,0x00,'10:FE:A4:F1:5D',1,2,2,NULL),(3,'2011-03-03 00:00:00',1,0x00,'10:FE:A4:F1:5D',1,3,3,NULL),(4,'2011-03-03 00:00:00',1,0x00,'10:FE:A4:F1:5D',1,3,4,NULL),(5,'2011-03-03 00:00:00',1,0x00,'10:FE:A4:F1:5D',1,2,5,NULL),(6,'2011-03-03 00:00:00',1,0x00,'10:FE:A4:F1:5D',1,1,6,NULL),(7,'2011-03-03 00:00:00',1,0x00,'10:FE:A4:F1:5D',1,1,7,NULL);
