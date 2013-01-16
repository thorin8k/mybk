/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicine_presentation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `creation_user_id` bigint(20) DEFAULT NULL,
  `generic_name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `presentation_name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `units` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `via` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `medicine` bigint(20) DEFAULT NULL,
  `dose` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKD1D580FFC056EDCD` (`medicine`),
  CONSTRAINT `FKD1D580FFC056EDCD` FOREIGN KEY (`medicine`) REFERENCES `medicine` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `medicine_presentation` VALUES (1,'c01','2011-08-09 07:47:55',1,'Glimepirida Sulfonilurea',0x00,'Glimepirida Sulfonilurea','mg',0,'ORAL',6,3),(2,'c02','2011-08-09 07:47:55',1,'Glimepirida Sulfonilurea',0x00,'Glimepirida Sulfonilurea','mg',0,'ORAL',6,4),(3,'c03','2011-08-09 07:47:55',1,'Glibenclamida Sulfonilurea',0x00,'Glibenclamida Sulfonilurea','mg',0,'ORAL',5,5),(4,'i01','2011-08-09 07:47:55',1,'regular insulin',0x00,'HUMULIN R','ml',0,'SUBCUTANEA',1,3),(5,'i02','2011-08-09 07:47:55',1,'regular insulin',0x00,'HUMULIN N','ml',0,'SUBCUTANEA',1,3),(6,'i03','2011-08-09 07:47:55',1,'regular insulin',0x00,'HUMULIN U','ml',0,'SUBCUTANEA',1,10),(7,'i04','2011-08-09 07:47:55',1,'regular insulin',0x00,'HUMULIN L','ml',0,'SUBCUTANEA',1,1.5),(8,'i05','2011-08-09 07:47:55',1,'NPH insulin',0x00,'HUMULIN 70/30','ml',0,'SUBCUTANEA',1,10),(9,'i06','2011-08-09 07:47:55',1,'Insulin lispro',0x00,'HUMALOG','ml',0,'SUBCUTANEA',1,10),(10,'i07','2011-08-09 07:47:55',1,'regular insulin',0x00,'NOVOLIN N','ml',0,'SUBCUTANEA',2,10),(11,'i08','2011-08-09 07:47:55',1,'regular insulin',0x00,'NOVOLIN R','ml',0,'SUBCUTANEA',2,1.5),(12,'i09','2011-08-09 07:47:55',1,'regular insulin',0x00,'NOVOLIN 70/30','ml',0,'SUBCUTANEA',2,10),(13,'i10','2011-08-09 07:47:55',1,'Insulin Glargine',0x00,'LANTUS','ml',0,'SUBCUTANEA',3,10),(14,'i11','2011-08-09 07:47:55',1,'Insulin Glargine',0x00,'LANTUS','ml',0,'SUBCUTANEA',3,5),(15,'i12','2011-08-09 07:47:55',1,'Insulin Glargine',0x00,'OPTISULIN','ml',0,'SUBCUTANEA',4,5),(16,'i12','2011-08-09 07:47:55',1,'Insulin Glargine',0x00,'OPTISULIN','ml',0,'SUBCUTANEA',4,3);
