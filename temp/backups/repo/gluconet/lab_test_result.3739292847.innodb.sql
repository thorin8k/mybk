/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lab_test_result` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_date` datetime DEFAULT NULL,
  `creation_user_id` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `isnumeric` bit(1) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `out_of_range_value` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `labtest` bigint(20) DEFAULT NULL,
  `tes_type` bigint(20) DEFAULT NULL,
  `directly_outof_range` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK95CDACB854B5D2E5` (`labtest`),
  KEY `FK95CDACB8ABF967A2` (`tes_type`),
  CONSTRAINT `FK95CDACB854B5D2E5` FOREIGN KEY (`labtest`) REFERENCES `lab_test` (`id`),
  CONSTRAINT `FK95CDACB8ABF967A2` FOREIGN KEY (`tes_type`) REFERENCES `test` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `lab_test_result` VALUES (1,'2011-03-23 14:05:33',1,0x00,0x01,'GLUCOSA BASAL','125',1,1,1,0x00),(2,'2011-03-23 14:05:33',1,0x00,0x01,'GLUCOSA BASAL','125',1,2,1,0x00),(4,'2011-03-23 14:05:33',1,0x00,0x01,'GLUCOSA 1 HORA','180',1,2,1,0x00),(5,'2011-03-23 14:05:33',1,0x00,0x01,'GLUCOSA 2 HORAS','140',1,2,1,0x00),(6,'2011-03-23 14:05:33',1,0x00,0x01,'GLUCOSA 3 HORAS','120',1,2,1,0x01),(7,'2011-03-23 14:05:33',1,0x00,0x01,'GLUCOSA 1 HORA','180',1,1,1,0x01),(8,'2011-03-23 14:05:33',1,0x00,0x01,'GLUCOSA BASAL','125',1,3,1,0x00),(9,'2011-03-23 14:05:33',1,0x00,0x01,'GLUCOSA 1 HORA','180',1,3,1,0x00),(10,'2011-03-23 14:05:33',1,0x00,0x01,'GLUCOSA 2 HORAS','140',1,3,1,0x01);
