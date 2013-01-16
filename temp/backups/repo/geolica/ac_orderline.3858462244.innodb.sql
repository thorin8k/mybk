/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_orderline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `line` int(11) DEFAULT NULL,
  `dateordered` varchar(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `datepromised` varchar(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `datedelivered` varchar(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `qtyordered` double NOT NULL DEFAULT '0',
  `qtyreserved` double NOT NULL DEFAULT '0',
  `qtydelivered` double NOT NULL DEFAULT '0',
  `price` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `typeofmaterial_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_orderline_product1` (`product_id`),
  KEY `fk_orderline_order1` (`order_id`),
  KEY `fk_orderline_linestatus1` (`status`),
  KEY `fk_orderline_typeofmaterial1` (`typeofmaterial_id`),
  CONSTRAINT `fk_orderline_linestatus1` FOREIGN KEY (`status`) REFERENCES `ac_linestatus` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_orderline_order1` FOREIGN KEY (`order_id`) REFERENCES `ac_order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_orderline_product1` FOREIGN KEY (`product_id`) REFERENCES `ac_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_orderline_typeofmaterial1` FOREIGN KEY (`typeofmaterial_id`) REFERENCES `ac_typeofmaterial` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `ac_orderline` VALUES (1,1,10,'20120301','20120209','','CAJA CONEXIÓN A5',3,2,0,2,12,3,4);
