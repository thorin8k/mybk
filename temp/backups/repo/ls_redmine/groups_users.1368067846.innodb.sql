/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_users` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  UNIQUE KEY `groups_users_ids` (`group_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `groups_users` VALUES (8,1),(8,3),(8,4),(8,5),(9,1),(9,3),(9,6),(9,7),(13,4),(13,5),(13,12),(13,19),(14,1),(14,3),(14,10),(14,11),(14,20),(16,15),(21,1),(21,22),(23,3);
