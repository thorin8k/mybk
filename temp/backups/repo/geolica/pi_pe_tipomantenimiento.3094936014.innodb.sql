/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pi_pe_tipomantenimiento` (
  `id` bigint(20) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `pi_pe_tipomantenimiento` VALUES (1,'Correctivo'),(2,'Empresa Agena Parq.'),(3,'Eufer'),(4,'Gran Correctivo'),(6,'Preaviso'),(7,'Preventivo Anual'),(8,'Preventivo Semestral'),(9,'Resetear'),(10,'Revisión');
