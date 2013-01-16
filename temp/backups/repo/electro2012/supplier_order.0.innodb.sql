/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier_order` (
  `idsupplier` int(11) NOT NULL,
  `year` varchar(4) CHARACTER SET latin1 NOT NULL,
  `quarter` int(11) NOT NULL,
  `order_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`idsupplier`,`quarter`,`year`),
  KEY `fk_supplier_order_supplier1` (`idsupplier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
