/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_order` (
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
  CONSTRAINT `ac_order_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `ac_store` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_docstatus1` FOREIGN KEY (`docstatus`) REFERENCES `ac_docstatus` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_supplier1` FOREIGN KEY (`supplier_id`) REFERENCES `ac_supplier` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_user1` FOREIGN KEY (`createdby`) REFERENCES `ac_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_user2` FOREIGN KEY (`updatedby`) REFERENCES `ac_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `ac_order` VALUES (4,'1234',NULL,NULL,NULL,NULL,1,'asdf','20100401','20100501','20100601',4,25.5,'1',3,1),(8,'1234',NULL,NULL,NULL,NULL,1,'ffff','20110413','20110421','20110426',0,0,'1',1,1),(9,'1234',NULL,NULL,NULL,NULL,1,'ffff','20100501','20100501','20100501',0,0,'1',1,1),(10,'43123',NULL,NULL,NULL,NULL,1,'aaaa','20110511','20110519','20110528',0,0,'1',1,1),(11,'99999',NULL,NULL,'201105110848',1,1,'99999998','20110510','',NULL,0,0,'SUINCO-9999',2,1),(12,'435454','201105110851',1,NULL,NULL,1,'fasdghfhjgk','20110511','',NULL,0,0,'55ggg',1,1),(13,'000001','201106061051',1,NULL,NULL,NULL,'Pedido de Prueba','20110606','20110607',NULL,1,25,'123456',3,1);
