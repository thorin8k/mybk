/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `de_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference1` varchar(30) DEFAULT NULL,
  `reference2` varchar(30) DEFAULT NULL,
  `description` varchar(65) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `de_material` VALUES (1,'123','123','ADF',1.5),(2,'333','344','Prueba 2',12),(3,'13333','333','ala',14);
