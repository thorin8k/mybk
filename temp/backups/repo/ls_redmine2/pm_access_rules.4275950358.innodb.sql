/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pm_access_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  `can_access` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_access_rules_profile1` (`profile_id`),
  KEY `fk_access_rules_sections1` (`section_id`),
  KEY `fk_access_rules_actions1` (`action_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `pm_access_rules` VALUES (1,1,1,7,1),(2,1,1,1,1),(3,1,1,5,1),(4,2,1,9,1),(5,2,1,11,1),(6,1,1,10,1),(8,1,4,1,1),(9,1,1,12,1),(10,1,1,8,1),(11,2,1,8,1),(12,1,1,6,1),(13,2,1,6,1),(15,2,1,7,1),(16,2,1,1,1),(17,2,1,5,1),(18,2,4,1,1),(19,2,1,10,1),(20,2,1,12,1),(21,1,1,18,1),(22,2,1,18,1),(23,1,1,19,1),(24,2,1,19,1),(25,2,6,1,1);
