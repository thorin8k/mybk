/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `obrae` (
  `obra_id` int(11) NOT NULL,
  `codcap` int(11) NOT NULL,
  `obrae_codcap` int(11) DEFAULT '0',
  `capitulo` varchar(27) CHARACTER SET latin1 DEFAULT '',
  `coit` double DEFAULT '0',
  `coia` double DEFAULT '0',
  `coim` double DEFAULT '0',
  `obraecol` varchar(45) CHARACTER SET latin1 DEFAULT '0',
  PRIMARY KEY (`obra_id`,`codcap`),
  KEY `fk_obrae_obra1` (`obra_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
