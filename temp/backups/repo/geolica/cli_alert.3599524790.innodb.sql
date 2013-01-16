/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cli_alert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `associated_to` int(11) NOT NULL,
  `associated_id` int(11) NOT NULL,
  `element_date` varchar(8) COLLATE utf8_spanish_ci NOT NULL,
  `date_created` varchar(8) COLLATE utf8_spanish_ci NOT NULL,
  `date_sended` varchar(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `viewed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `cli_alert` VALUES (1,1,1,'20120901','20121020','20121123',1,1),(13,2,40,'20121001','20121031','20121123',1,1),(14,3,41,'20121001','20121031','20121123',1,1),(18,3,46,'20121029','20121031','20121123',1,1),(19,1,47,'20121119','20121119','20121123',1,0),(21,2,49,'20121001','20121123','20121123',1,0),(22,1,50,'20121101','20121126',NULL,0,0);
