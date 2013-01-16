/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_orderlineserialnumber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderline_id` int(11) NOT NULL,
  `line` int(11) DEFAULT NULL,
  `serialnumber` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_orderlineserialnumber_orderline1` (`orderline_id`),
  CONSTRAINT `fk_orderlineserialnumber_orderline1` FOREIGN KEY (`orderline_id`) REFERENCES `ac_orderline` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `ac_orderlineserialnumber` VALUES (1,1,1,'3123123'),(2,1,1,'123412'),(4,13,NULL,'1234'),(5,1,1,'123');
