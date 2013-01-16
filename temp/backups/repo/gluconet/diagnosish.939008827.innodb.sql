/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diagnosish` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_date` datetime DEFAULT NULL,
  `creation_user_id` bigint(20) DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  `mod_user_id` bigint(20) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ref_id` bigint(20) DEFAULT NULL,
  `short_description` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `diagnosish` VALUES (1,'2011-09-05 09:36:47',3,'2011-09-05 09:36:47',3,'MENARINITIS CRONICA',21,'ME',0),(2,'2011-09-05 12:51:10',3,'2011-09-05 12:51:10',3,'eess',22,'ee',0),(3,'2011-09-05 13:03:19',3,'2011-09-05 13:03:19',3,'FERNNACNO',23,'FER',0),(4,'2011-09-07 12:08:18',3,'2011-09-07 12:08:18',3,'FERDIOPATIA',24,'FE',0),(5,'2011-09-13 09:47:22',3,'2011-09-13 09:47:22',3,'INSUFICIENCIA RENAL',25,'IR',0),(6,'2011-09-29 09:26:16',3,'2011-09-29 09:26:16',3,'FERNADINA',26,'FERN',0),(7,'2011-09-29 12:26:13',3,'2011-09-29 12:26:13',3,'asdfasdf',27,'aaa',0),(8,'2011-10-04 09:52:58',3,'2011-10-04 09:52:58',3,'PATRAS',28,'PAT',0),(9,'2011-10-04 10:16:22',3,'2011-10-04 10:16:22',3,'safasdfadf',29,'asdfq',0),(10,'2011-10-04 10:19:27',3,'2011-10-04 10:19:27',3,'qewrqwer',30,'asdfasdf',0),(11,'2011-10-04 10:19:40',3,'2011-10-04 10:19:40',3,'erdeasdf',31,'dei',0),(12,'2011-10-04 10:19:48',3,'2011-10-04 10:19:48',3,'asdfasdfasdfasdf',32,'asdfasdf',0),(13,'2011-10-04 10:19:51',3,'2011-10-04 10:19:51',3,'qewrasdfasdf',33,'erqewrasdfa',0),(14,'2011-10-04 10:19:53',3,'2011-10-04 10:19:53',3,'dfasdfasdf',34,'qwrqwerfas',0),(15,'2011-10-05 15:35:56',3,'2011-10-05 15:35:56',3,'weirower',35,'asdf',0),(16,'2011-11-03 17:04:44',3,'2011-11-03 17:04:44',3,'SARA',36,'SA',0);
