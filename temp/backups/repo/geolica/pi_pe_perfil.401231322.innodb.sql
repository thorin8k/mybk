/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pi_pe_perfil` (
  `id` bigint(20) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `PartesModifyFilterOwner` tinyint(1) NOT NULL,
  `PartesListFilterCliente` tinyint(1) NOT NULL,
  `PartesCreate` tinyint(1) NOT NULL,
  `PartesModify` tinyint(1) NOT NULL,
  `PartesView` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `pi_pe_perfil` VALUES (1,'Administrador',0,0,1,1,1),(2,'Operario',1,0,1,1,1),(3,'Cliente',0,1,0,0,1);
