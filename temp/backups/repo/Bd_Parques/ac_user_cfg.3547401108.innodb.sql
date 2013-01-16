/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_user_cfg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `param` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `value` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_cfg_user1` (`user_id`),
  CONSTRAINT `fk_user_cfg_user1` FOREIGN KEY (`user_id`) REFERENCES `ac_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `ac_user_cfg` VALUES (3,3,'delegation','1'),(4,10,'delegation','1'),(6,17,'delegation','3'),(29,17,'tracewidget','1'),(34,18,'delegation','8'),(35,18,'tracewidget','1'),(36,11,'tracewidget','1'),(45,19,'delegation','8'),(46,19,'tracewidget','1'),(47,19,'oiltype','1'),(48,11,'alertwidget','1'),(49,20,'delegation','3'),(50,1,'delegation','1');
