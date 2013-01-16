/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_cfg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `param` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `value` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_cfg_user1` (`user_id`),
  CONSTRAINT `fk_user_cfg_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `user_cfg` VALUES (4,1,'delegation','1'),(5,6,'delegation','3'),(6,2,'delegation','16'),(7,5,'delegation','1'),(8,3,'delegation','13'),(10,8,'tracewidget','1'),(11,8,'alertwidget','1'),(12,9,'delegation','18'),(13,10,'delegation','18'),(14,11,'delegation','20');
