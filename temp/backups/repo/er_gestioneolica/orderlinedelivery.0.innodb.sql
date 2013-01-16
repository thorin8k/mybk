/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderlinedelivery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderline_id` int(11) NOT NULL,
  `datedelivered` varchar(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `qtydelivered` double DEFAULT NULL,
  `docreference` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_orderlinedelivery_orderline1` (`orderline_id`),
  CONSTRAINT `fk_orderlinedelivery_orderline1` FOREIGN KEY (`orderline_id`) REFERENCES `orderline` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
