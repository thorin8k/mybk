/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `de_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `de_actions` VALUES (1,'index'),(2,'view'),(3,'create'),(4,'update'),(5,'admin'),(6,'delete'),(7,'report'),(8,'export2Pdf'),(9,'checkProduct'),(11,'downFile');
