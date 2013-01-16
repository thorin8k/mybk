/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `de_tracing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `annotation_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  `tracing_type_id` int(11) NOT NULL,
  `responsible_id` int(11) NOT NULL,
  `datetrace` varchar(8) DEFAULT NULL,
  `dateplanned` varchar(8) DEFAULT NULL,
  `totalcost` double DEFAULT NULL,
  `description` varchar(65) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tracing_annotation1` (`annotation_id`),
  KEY `fk_tracing_empleado_EG1` (`created_by_id`),
  KEY `fk_tracing_tracing_type1` (`tracing_type_id`),
  KEY `fk_de_tracing_EG_empleado1` (`responsible_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `de_tracing` VALUES (1,5,4997,1,4245,'20110802','20110804',12,'123a');
