/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cli_doc_filetags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_doc_file` int(11) NOT NULL,
  `id_tag` int(11) NOT NULL,
  `value` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_doc_file` (`id_doc_file`),
  KEY `id_tag` (`id_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
