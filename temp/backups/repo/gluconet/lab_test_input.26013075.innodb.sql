/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lab_test_input` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_date` datetime DEFAULT NULL,
  `creation_user_id` bigint(20) DEFAULT NULL,
  `default_value` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `isnumeric` bit(1) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `units` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `labtest` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK56EEF3CF54B5D2E5` (`labtest`),
  CONSTRAINT `FK56EEF3CF54B5D2E5` FOREIGN KEY (`labtest`) REFERENCES `lab_test` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `lab_test_input` VALUES (1,'2011-03-23 14:05:33',1,'50',0x00,NULL,'CARGA','mg',0,1),(2,'2011-03-23 14:05:33',1,'100',0x00,NULL,'CARGA','mg',0,2),(3,'2011-03-23 14:05:33',1,'75',0x00,NULL,'CARGA','mg',0,3);
