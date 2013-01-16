/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `de_ot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numOT` varchar(45) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `obra_chapters_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_de_ot_de_obra_chapters1` (`obra_chapters_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `de_ot` VALUES (1,'123','1233333',1);
