/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channeltype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_name` longtext COLLATE utf8_spanish_ci,
  `code` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name` longtext COLLATE utf8_spanish_ci,
  `params` longtext COLLATE utf8_spanish_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `channeltype` VALUES (1,NULL,'WSDL','WSDL',NULL),(2,NULL,'SOCKET','SOCKET',NULL),(3,NULL,'JDBC','JDBC',NULL);
