/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pm_user_profile` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `profile_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`profile_id`),
  KEY `profile_id` (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `pm_user_profile` VALUES (3,1),(4,1),(5,1),(6,1),(7,1),(10,1),(11,1),(12,1),(15,1),(17,1),(18,1),(19,1),(20,1),(22,1),(24,1),(1,2);
