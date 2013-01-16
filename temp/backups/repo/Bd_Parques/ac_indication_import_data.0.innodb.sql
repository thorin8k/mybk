/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_indication_import_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `indication_import_id` int(11) NOT NULL,
  `indication_field_id` int(11) NOT NULL,
  `value` text COLLATE utf8_spanish_ci,
  PRIMARY KEY (`id`),
  KEY `fk_indication_import_data_indication_field1` (`indication_field_id`),
  KEY `fk_indication_import_data_indication_import1` (`indication_import_id`),
  CONSTRAINT `fk_indication_import_data_indication_field1` FOREIGN KEY (`indication_field_id`) REFERENCES `ac_indication_field` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_indication_import_data_indication_import1` FOREIGN KEY (`indication_import_id`) REFERENCES `ac_indication_import` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
