/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treatment_pattern_line` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_date` datetime DEFAULT NULL,
  `creation_user_id` bigint(20) DEFAULT NULL,
  `dose` float DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `insuline_type` bigint(20) DEFAULT NULL,
  `moment` bigint(20) DEFAULT NULL,
  `treatment_pattern` bigint(20) DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKB5A8ABAA9ABBFF1A` (`treatment_pattern`),
  KEY `FKB5A8ABAAFF77C799` (`moment`),
  KEY `FKB5A8ABAACDC1508B` (`insuline_type`),
  CONSTRAINT `FKB5A8ABAA9ABBFF1A` FOREIGN KEY (`treatment_pattern`) REFERENCES `treatment_pattern` (`id`),
  CONSTRAINT `FKB5A8ABAACDC1508B` FOREIGN KEY (`insuline_type`) REFERENCES `medicine_presentation` (`id`),
  CONSTRAINT `FKB5A8ABAAFF77C799` FOREIGN KEY (`moment`) REFERENCES `moment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `treatment_pattern_line` VALUES (1,'2011-08-25 01:37:01',3,1232,0x01,1,2,2,1,'commentar'),(2,'2011-08-25 08:09:21',3,232,0x01,1,3,2,1,'23afasdfasdf'),(3,'2011-08-25 08:09:33',3,123,0x01,1,4,3,1,'cvasdfsdf'),(4,'2011-08-25 08:09:49',3,444,0x01,1,11,5,1,'comomoasdfasdf'),(5,'2011-08-25 08:09:59',3,321,0x01,1,4,11,1,'erawfsdfasdfasdf'),(6,'2011-08-25 08:11:34',3,3123,0x01,1,6,7,1,'sdfasdfasdf'),(7,'2011-08-25 08:11:42',3,31,0x01,1,6,10,1,'asdfasdfasdf'),(8,'2011-08-25 08:11:55',3,1233,0x01,1,10,10,1,'asdfasdfasdf'),(9,'2011-08-25 08:12:03',3,3213,0x01,1,9,2,1,'qweqweqwe'),(10,'2011-08-25 08:13:06',3,3213,0x01,1,9,2,1,'qweqweqwe'),(11,'2011-08-25 08:13:11',3,3213,0x01,1,12,5,1,'qweqweqwe'),(12,'2011-08-25 08:13:18',3,3213,0x01,1,15,10,1,'qweqweqwe'),(13,'2011-08-25 08:13:20',3,3213,0x01,1,15,10,1,'qweqweqwe'),(14,'2011-08-25 08:13:22',3,3213,0x01,1,15,10,1,'qweqweqwe'),(15,'2011-08-25 08:13:22',3,3213,0x01,1,15,10,1,'qweqweqwe'),(16,'2011-08-25 08:44:16',3,12123,0x01,1,4,3,1,'fdgfg'),(17,'2011-08-25 08:45:47',3,123,0x01,1,8,5,1,'123123123'),(18,'2011-08-25 08:46:16',3,123,0x01,1,7,4,1,'1231251243'),(19,'2011-08-31 16:24:02',3,231,0x00,0,8,11,1,'acompañar la dosis de insulina con un tentempie'),(20,'2011-09-05 09:36:07',3,345,0x01,1,4,7,1,'administrar tras los antidepresivos'),(21,'2011-09-05 10:37:10',3,23,0x01,1,2,12,1,'no tomar con agua'),(22,'2011-09-05 13:03:52',3,3000,0x01,1,2,11,1,'ufff'),(23,'2011-09-07 12:07:55',3,14000,0x00,0,10,1,1,'medir la glucosa 15 minutos despues de administrar'),(24,'2011-09-29 13:39:44',3,11,0x01,1,3,4,1,'asdfasf'),(25,'2011-09-29 15:15:47',3,500,0x00,0,6,3,1,'tras la dosis de insulina,dar al paciente 200ml de agua '),(26,'2011-09-29 15:40:38',3,333,0x01,1,2,1,1,'abc'),(27,'2011-09-29 15:40:51',3,333,0x01,1,4,5,1,'asdfasdf'),(28,'2011-09-29 15:41:27',3,750,0x00,0,10,7,1,'administrar tras los antidepresivos'),(29,'2011-09-29 15:41:35',3,243,0x01,1,6,3,1,'asdfasdf'),(30,'2011-09-29 16:59:53',3,444,0x00,0,3,4,1,''),(31,'2011-09-29 17:00:24',2,222,0x01,1,3,2,1,'12'),(32,'2011-09-30 09:13:41',3,222,0x01,1,1,1,1,'222'),(33,'2011-09-30 09:14:09',3,22,0x01,1,2,3,1,'22222'),(34,'2011-10-04 10:16:04',3,34343,0x01,1,2,4,1,'fghfgjhgj'),(35,'2011-10-04 10:19:10',3,234,0x01,1,2,3,1,'asdfasdf'),(36,'2011-10-04 10:45:07',3,36,0x01,1,2,4,1,'asdf'),(37,'2011-10-04 10:50:49',3,125,0x01,1,2,2,1,'a'),(38,'2011-10-05 15:43:33',3,3331,0x01,1,6,3,1,'pichi'),(39,'2011-10-07 10:08:50',3,12123,0x00,1,3,2,1,''),(40,'2011-10-14 22:08:26',3,23,0x00,0,2,2,1,'123'),(41,'2011-10-16 19:02:51',3,100,0x00,0,7,2,5,'añlsdf'),(42,'2011-10-16 19:03:06',3,3,0x00,0,16,4,5,''),(43,'2011-11-03 17:04:34',3,22,0x00,0,5,2,1,'afasdf'),(44,'2011-11-22 00:34:29',3,161,0x00,0,15,1,NULL,''),(45,'2011-11-23 13:54:48',3,35,0x00,0,4,3,1,'');
