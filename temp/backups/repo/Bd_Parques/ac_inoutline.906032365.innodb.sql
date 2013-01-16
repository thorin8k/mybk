/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_inoutline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inout_id` int(11) NOT NULL,
  `line` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `movementqty` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `text1` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `text2` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_inoutline_inout1` (`inout_id`),
  KEY `fk_inoutline_product1` (`product_id`),
  CONSTRAINT `fk_inoutline_inout1` FOREIGN KEY (`inout_id`) REFERENCES `ac_inout` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_inoutline_product1` FOREIGN KEY (`product_id`) REFERENCES `ac_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `ac_inoutline` VALUES (1,5,1,1,'adsf',12,12,'asdf','asd','asdf'),(2,4,10,1,'Artículo de prueba',56,12.5,'123','','');
