/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_productcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `isactive` tinyint(4) DEFAULT NULL,
  `value` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `created` varchar(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `updated` varchar(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_productcategrory_product1` (`product_id`),
  CONSTRAINT `fk_productcategrory_product1` FOREIGN KEY (`product_id`) REFERENCES `ac_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
