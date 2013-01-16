/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `password` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `profile_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_profile1` (`profile_id`),
  KEY `fk_user_company1` (`company_id`),
  CONSTRAINT `fk_user_company1` FOREIGN KEY (`company_id`) REFERENCES `ac_company` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_profile1` FOREIGN KEY (`profile_id`) REFERENCES `ac_profile` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `ac_user` VALUES (1,'admin','admin',2,1),(3,'prueba','prueba',3,1),(10,'aceites','123',3,5),(11,'admAceites','admin',4,5),(12,'aceitesCli','123',5,5),(17,'prAC3','123',5,5),(18,'AC','123',5,5),(19,'DC','321',5,5),(20,'asd','asd',5,5);
