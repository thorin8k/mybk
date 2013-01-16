/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_profile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_date` datetime DEFAULT NULL,
  `creation_user_id` bigint(20) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `menu_option` bigint(20) DEFAULT NULL,
  `permission` bigint(20) DEFAULT NULL,
  `profile` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK39D176C914B0B46C` (`id`),
  KEY `FK39D176C924A42D4B` (`permission`),
  KEY `FK39D176C9375CC2D9` (`profile`),
  KEY `FK39D176C9517F8D22` (`menu_option`),
  CONSTRAINT `FK39D176C924A42D4B` FOREIGN KEY (`permission`) REFERENCES `permission_level` (`id`),
  CONSTRAINT `FK39D176C9375CC2D9` FOREIGN KEY (`profile`) REFERENCES `profile` (`id`),
  CONSTRAINT `FK39D176C9517F8D22` FOREIGN KEY (`menu_option`) REFERENCES `menu_option` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `menu_profile` VALUES (3,NULL,1,NULL,1,4,1),(4,NULL,1,NULL,2,4,1),(5,NULL,1,NULL,3,4,1),(6,NULL,1,NULL,4,4,1),(7,NULL,1,NULL,5,4,1),(8,NULL,1,NULL,6,4,1),(9,NULL,1,NULL,7,4,1),(10,NULL,1,NULL,8,4,1),(11,NULL,1,NULL,9,4,1),(12,NULL,1,NULL,10,4,1),(13,NULL,1,NULL,13,4,1),(14,NULL,1,NULL,15,4,1),(15,NULL,1,NULL,16,4,1),(19,NULL,1,NULL,11,4,1),(20,NULL,1,NULL,17,4,1),(21,NULL,1,NULL,12,4,1);
