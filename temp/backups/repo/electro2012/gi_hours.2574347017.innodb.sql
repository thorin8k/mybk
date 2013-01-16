/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gi_hours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` double DEFAULT NULL,
  `cost` double DEFAULT NULL,
  `incidence_id` int(11) NOT NULL,
  `worker_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_hours_incidence1` (`incidence_id`),
  KEY `fk_hours_worker_category1` (`worker_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `gi_hours` VALUES (3,12,333,45,NULL),(4,1,2,111,NULL);
