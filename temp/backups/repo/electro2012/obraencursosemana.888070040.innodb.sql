/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `obraencursosemana` (
  `obra_id` int(11) NOT NULL,
  `ano` varchar(45) CHARACTER SET latin1 NOT NULL,
  `semana` int(11) NOT NULL,
  `manoobra` double DEFAULT '0',
  `material` double DEFAULT '0',
  PRIMARY KEY (`obra_id`,`ano`,`semana`),
  KEY `fk_obraencursosemana_obra1` (`obra_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `obraencursosemana` VALUES (24713,'2011',3,1,1),(25314,'2011',3,1,1),(25373,'2011',3,1,1);
