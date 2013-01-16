/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `isactive` tinyint(4) DEFAULT NULL,
  `smtphost` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `requestemail` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `requestuser` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `requestuserpw` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `issmtpauthorization` tinyint(4) DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `ac_company` VALUES (1,'2','Enel Unión Fenosa','Renovables',1,'','','','',NULL,1),(5,NULL,'Aceites','',1,NULL,NULL,NULL,NULL,NULL,0);
