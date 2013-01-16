/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gi_welding_position_has_welding` (
  `welding_position_id` int(11) NOT NULL AUTO_INCREMENT,
  `welding_id` int(11) NOT NULL,
  PRIMARY KEY (`welding_position_id`,`welding_id`),
  KEY `fk_welding_position_has_welding_welding1` (`welding_id`),
  KEY `fk_welding_position_has_welding_welding_position1` (`welding_position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `gi_welding_position_has_welding` VALUES (1,1),(3,1),(1,10);
