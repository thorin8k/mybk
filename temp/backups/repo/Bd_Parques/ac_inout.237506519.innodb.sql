/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_inout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `docstatus_id` int(11) NOT NULL,
  `number` int(11) DEFAULT NULL,
  `movementdate` varchar(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `turbine_id` int(11) DEFAULT NULL,
  `failure_id` int(11) NOT NULL,
  `text1` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `text2` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `text3` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `text4` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ot_ocen` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `out_ticket` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `typeofmaintenance_id` int(11) NOT NULL,
  `movemen_type_id` int(11) NOT NULL,
  `dest_store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_inout_docstatus1` (`docstatus_id`),
  KEY `fk_inout_user1` (`user_id`),
  KEY `fk_inout_store1` (`store_id`),
  KEY `fk_inout_failure1` (`failure_id`),
  KEY `fk_inout_turbine1` (`turbine_id`),
  KEY `fk_inout_typeofmaintenance1` (`typeofmaintenance_id`),
  KEY `fk_inout_movemen_type1` (`movemen_type_id`),
  CONSTRAINT `fk_inout_docstatus1` FOREIGN KEY (`docstatus_id`) REFERENCES `ac_docstatus` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_inout_failure1` FOREIGN KEY (`failure_id`) REFERENCES `ac_failure` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_inout_movemen_type1` FOREIGN KEY (`movemen_type_id`) REFERENCES `ac_movement_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_inout_store1` FOREIGN KEY (`store_id`) REFERENCES `ac_store` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_inout_typeofmaintenance1` FOREIGN KEY (`typeofmaintenance_id`) REFERENCES `ac_typeofmaintenance` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_inout_user1` FOREIGN KEY (`user_id`) REFERENCES `ac_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `ac_inout` VALUES (4,1,1,NULL,'20110512',1,NULL,1,'23456','87654321','234567io',NULL,NULL,NULL,1,1,2),(5,1,1,NULL,'20110512',1,1,1,NULL,NULL,NULL,NULL,'3556666','6666666',1,2,NULL),(6,1,1,NULL,'20110609',1,1,1,'123','1233','',NULL,'','',1,1,2);
