/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gi_welding_used_mat_has_welding` (
  `welding_used_mat_id` int(11) NOT NULL AUTO_INCREMENT,
  `welding_id` int(11) NOT NULL,
  `quantity` double NOT NULL,
  PRIMARY KEY (`welding_used_mat_id`,`welding_id`),
  KEY `fk_welding_used_mat_has_welding_welding1` (`welding_id`),
  KEY `fk_welding_used_mat_has_welding_welding_used_mat1` (`welding_used_mat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `gi_welding_used_mat_has_welding` VALUES (1,11,2),(2,1,1),(2,10,2),(2,11,3),(2,12,3),(3,11,4),(3,12,4),(4,1,2);
