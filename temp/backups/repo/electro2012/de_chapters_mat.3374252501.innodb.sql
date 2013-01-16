/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `de_chapters_mat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chapters_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `datedelivered` varchar(8) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `daterequested` varchar(8) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_gestobra_mat_gestobra1` (`chapters_id`),
  KEY `fk_gestobra_mat_material1` (`material_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `de_chapters_mat` VALUES (1,1,1,2.00,15.00,'01/01/19','01/01/19'),(4,1,1,1231.00,0.00,'',''),(5,1,1,2222.00,0.00,'','20111013'),(6,1,1,3333.00,2.75,'',''),(7,1,1,1234.00,2.00,'',''),(8,1,1,1.00,2.50,'',''),(10,3,1,12.00,1.50,'20111104','20111104');
