/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_orderlinedelivery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderline_id` int(11) NOT NULL,
  `datedelivered` varchar(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `qtydelivered` double DEFAULT NULL,
  `docreference` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_orderlinedelivery_orderline1` (`orderline_id`),
  CONSTRAINT `fk_orderlinedelivery_orderline1` FOREIGN KEY (`orderline_id`) REFERENCES `ac_orderline` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `ac_orderlinedelivery` VALUES (1,1,'20120302',2,'123');
