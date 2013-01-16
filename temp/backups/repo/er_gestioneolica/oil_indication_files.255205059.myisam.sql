/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oil_indication_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(75) NOT NULL,
  `upload_date` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `oil_indication_files` VALUES (36,'todas.xlsx','201201161650');
