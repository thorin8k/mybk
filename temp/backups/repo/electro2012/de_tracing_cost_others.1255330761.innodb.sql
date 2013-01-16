/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `de_tracing_cost_others` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracing_id` int(11) NOT NULL,
  `description` varchar(65) DEFAULT NULL,
  `cost` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tracing_cost_others_tracing1` (`tracing_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `de_tracing_cost_others` VALUES (1,1,'12322222',1231);
