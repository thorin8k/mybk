/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `created` varchar(14) COLLATE utf8_spanish_ci DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `updated` varchar(14) COLLATE utf8_spanish_ci DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `docstatus` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dateordered` varchar(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `datepromissed` varchar(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dateprinted` varchar(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `totallines` double NOT NULL DEFAULT '0',
  `grandtotal` double NOT NULL DEFAULT '0',
  `poreference` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_user1` (`createdby`),
  KEY `fk_order_user2` (`updatedby`),
  KEY `fk_order_docstatus1` (`docstatus`),
  KEY `fk_order_supplier1` (`supplier_id`),
  KEY `fk_order_store` (`store_id`),
  CONSTRAINT `fk_order_docstatus1` FOREIGN KEY (`docstatus`) REFERENCES `docstatus` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_supplier1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_user1` FOREIGN KEY (`createdby`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_user2` FOREIGN KEY (`updatedby`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `store` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
