/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `console_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `surname1` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `surname2` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `locale` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK28B77DB397B4F083` (`locale`),
  CONSTRAINT `FK28B77DB397B4F083` FOREIGN KEY (`locale`) REFERENCES `locale` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `console_user` VALUES (1,'forma','forma','forma','-','-',1);
