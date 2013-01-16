/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key_cfg` varchar(60) COLLATE utf16_spanish_ci NOT NULL,
  `value` varchar(80) COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `config` VALUES (11,'dropState','3'),(12,'dropToken','lse9gyuyvbkch8c'),(13,'dropTokenSec','chyflm0y0bvzvyl');
