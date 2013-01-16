/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proxylab_param` (
  `param_name` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `comments` longtext COLLATE utf8_spanish_ci,
  `type` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`param_name`),
  KEY `FK711A10AD19C2B7FE` (`type`),
  CONSTRAINT `FK711A10AD19C2B7FE` FOREIGN KEY (`type`) REFERENCES `channeltype` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `proxylab_param` VALUES ('CON_URL',NULL,3),('DRIVER_CLASSNAME',NULL,3),('HOST',NULL,2),('METHOD',NULL,1),('MLLP',NULL,2),('PASSWORD',NULL,3),('PORT',NULL,2),('TO_PIPES',NULL,2),('URL',NULL,1),('USERNAME',NULL,3);
