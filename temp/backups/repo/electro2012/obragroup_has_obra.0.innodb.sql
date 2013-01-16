/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `obragroup_has_obra` (
  `id_obragroup` int(11) NOT NULL,
  `id_obra` int(11) NOT NULL,
  PRIMARY KEY (`id_obragroup`,`id_obra`),
  KEY `fk_obragroup_has_obra_obragroup1` (`id_obragroup`),
  KEY `fk_obragroup_has_obra_obra1` (`id_obra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
