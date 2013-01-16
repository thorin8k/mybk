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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `ac_user` VALUES (1,'admin','admin',2,1),(2,'ecanosa','ecanosa2011',2,2),(3,'emendez','emendez2011',2,2),(4,'jmgonzalez','jmgonzalez',2,2),(5,'mcotelo','mcotelo2011',2,1),(6,'mmouzo','mmouzo2011',2,1),(7,'msuarez','msuarez2011',2,2),(8,'aceites','ER2011',4,5),(16,'prueba','pr',3,1),(19,'adelanta','adelanta',5,5),(22,'gnfr','gnfr',5,5);
