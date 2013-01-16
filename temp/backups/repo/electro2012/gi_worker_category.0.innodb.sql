/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gi_worker_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `worker_id` int(11) NOT NULL,
  `hour_cost` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_worker_category_worker1` (`worker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
