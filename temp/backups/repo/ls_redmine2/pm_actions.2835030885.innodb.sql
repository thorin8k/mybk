/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pm_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `pm_actions` VALUES (1,'index'),(2,'view'),(5,'create'),(6,'update'),(7,'admin'),(8,'delete'),(9,'fact'),(10,'report'),(11,'verify'),(12,'export2Xls'),(17,'downFile'),(18,'duplicate'),(19,'createEx');
