/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `actions` VALUES (1,'index'),(2,'view'),(5,'create'),(6,'update'),(7,'admin'),(8,'delete'),(9,'checkProduct'),(10,'report'),(11,'export2Pdf'),(12,'export2Xls'),(13,'import'),(14,'process'),(15,'export2Doc'),(16,'chart'),(17,'downFile');
