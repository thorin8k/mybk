/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_doc_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_id` int(11) NOT NULL,
  `associated_element_id` int(11) NOT NULL,
  `file_name` varchar(85) COLLATE utf8_spanish_ci DEFAULT NULL,
  `file_size` float DEFAULT NULL,
  `file_type` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `file_content` longblob,
  `upload_date` varchar(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entity_id` (`entity_id`),
  CONSTRAINT `ac_doc_files_ibfk_1` FOREIGN KEY (`entity_id`) REFERENCES `ac_entity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
