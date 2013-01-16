/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `connection_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_address` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `login` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `logout_time` datetime DEFAULT NULL,
  `session_id` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `app_user` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4BBAB2637289E83C` (`app_user`),
  CONSTRAINT `FK4BBAB2637289E83C` FOREIGN KEY (`app_user`) REFERENCES `app_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
