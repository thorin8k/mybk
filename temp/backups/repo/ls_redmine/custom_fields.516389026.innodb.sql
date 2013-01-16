/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `field_format` varchar(30) NOT NULL DEFAULT '',
  `possible_values` text,
  `regexp` varchar(255) DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT '0',
  `max_length` int(11) NOT NULL DEFAULT '0',
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_for_all` tinyint(1) NOT NULL DEFAULT '0',
  `is_filter` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT '1',
  `searchable` tinyint(1) DEFAULT '0',
  `default_value` text,
  `editable` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_custom_fields_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `custom_fields` VALUES (1,'ProjectCustomField','Cliente','string','--- []\n\n','',0,0,1,0,0,1,1,'',1),(2,'TimeEntryCustomField','Hora Inicio','string','--- []\n\n','',0,0,0,0,0,1,0,'',1),(3,'TimeEntryCustomField','Hora Fin','string','--- []\n\n','',0,0,0,0,0,2,0,'',1),(4,'IssueCustomField','Solicitante','string','--- \n- ER_Lucia Bouza Chao\n- ER_\n','',0,0,0,1,0,1,1,'',1),(5,'TimeEntryCustomField','Kilometros','int','--- []\n\n','',0,0,0,0,0,3,0,'',1),(6,'TimeEntryCustomField','Importe Gastos','float','--- []\n\n','',0,0,0,0,0,4,0,'',1),(7,'TimeEntryCustomField','Num Dietas','int','--- []\n\n','',0,0,0,0,0,5,0,'',1);
