/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospitalization` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comments` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `bed` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `build_module` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `creation_user_id` bigint(20) DEFAULT NULL,
  `floor` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ini_date` datetime DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `patient` bigint(20) DEFAULT NULL,
  `reason` bigint(20) DEFAULT NULL,
  `service` bigint(20) DEFAULT NULL,
  `room` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3F0E30EAFDE78591` (`patient`),
  KEY `FK3F0E30EA30EF7678` (`reason`),
  KEY `FK3F0E30EAD191C24B` (`service`),
  CONSTRAINT `FK3F0E30EA30EF7678` FOREIGN KEY (`reason`) REFERENCES `admission_reason` (`id`),
  CONSTRAINT `FK3F0E30EAD191C24B` FOREIGN KEY (`service`) REFERENCES `service_type` (`id`),
  CONSTRAINT `FK3F0E30EAFDE78591` FOREIGN KEY (`patient`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `hospitalization` VALUES (1,'subida de los niveles de glucosa','izqda','ala norte','2011-07-27 07:17:20',1,'2','2011-07-27 07:17:20',0x01,0x00,0,1,1,1,'201'),(2,'posible hiperglucemia ','izqda','ala sur','2011-07-27 07:17:20',1,'2','2011-07-27 07:17:20',0x01,0x00,12,2,3,2,'201'),(3,'posible hiperglucemia','dcha','ala sur','2011-07-27 07:17:20',1,'3','2011-07-27 07:17:20',0x01,0x00,0,3,2,2,'301'),(4,'posible hiperglucemia aguda','derecha','ala oexte','2011-07-27 07:17:20',1,'3','2011-07-27 07:17:20',0x01,0x00,2,4,4,2,'301'),(5,'posible hiperglucemia','izqda','ala sur','2011-07-27 07:17:20',1,'3','2011-07-27 07:17:20',0x01,0x00,0,5,4,3,'302'),(6,'posible hipoglucemia','dcha','ala este','2011-07-27 07:17:20',1,'3','2011-07-27 07:17:20',0x01,0x00,0,6,2,3,'302'),(7,'posible hipoglucemia','dcha','ala este','2011-07-27 07:17:20',1,'5','2011-07-27 07:17:20',0x01,0x00,0,7,1,2,'501'),(8,'posible hipoglucemia','dcha','ala oeste','2011-07-27 07:17:20',1,'5','2011-07-27 07:17:20',0x01,0x00,0,8,2,2,'502'),(9,'posible hipoglucemia','izqda','ala sur','2011-07-27 07:17:20',1,'3','2011-07-27 07:17:20',0x01,0x00,0,9,3,2,'309'),(10,'posible hipoglucemia','dcha','ala este','2011-07-27 07:17:20',1,'3','2011-07-27 07:17:20',0x01,0x00,0,10,1,2,'303'),(11,'posible hipoglucemia','izqda','ala este','2011-07-27 07:17:20',1,'3','2011-07-27 07:17:20',0x01,0x00,0,11,2,3,'302'),(12,'posible hipoglucemia','dcha','ala sur','2011-07-27 07:17:20',1,'3','2011-07-27 07:17:20',0x01,0x00,0,12,3,3,'312'),(13,'posible hipoglucemia','dcha','ala norte','2011-07-27 07:17:20',1,'4','2011-07-27 07:17:20',0x01,0x00,0,13,1,3,'402'),(14,'posible hipoglucemia','izqda','ala norte','2011-07-27 07:17:20',1,'3','2011-07-27 07:17:20',0x01,0x00,0,14,4,3,'322'),(15,'posible hipoglucemia','dcha','ala este','2011-07-27 07:17:20',1,'3','2011-07-27 07:17:20',0x01,0x00,0,15,2,3,'311'),(16,'posible hipoglucemia','dcha','ala oeste','2011-07-27 07:17:20',1,'1','2011-07-27 07:17:20',0x01,0x00,0,16,1,3,'102'),(17,'posible hipoglucemia','dcha','ala oeste','2011-07-27 07:17:20',1,'2','2011-07-27 07:17:20',0x01,0x00,0,17,4,3,'202'),(18,'posible hipoglucemia','izqda','ala norte','2011-07-27 07:17:20',1,'1','2011-07-27 07:17:20',0x01,0x00,0,18,1,3,'102'),(19,'posible hipoglucemia','dcha','ala norte','2011-07-27 07:17:20',1,'2','2011-07-27 07:17:20',0x01,0x00,0,19,3,3,'212'),(20,'posible hipoglucemia','izqda','ala este','2011-07-27 07:17:20',1,'3','2011-07-27 07:17:20',0x01,0x00,0,20,4,3,'307'),(21,'posible hipoglucemia aguda','dcha','ala este','2011-07-27 07:17:20',1,'5','2011-07-27 07:17:20',0x01,0x00,0,21,2,3,'511');
