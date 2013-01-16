/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pi_pe_subcontrata` (
  `id` bigint(20) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `pi_pe_subcontrata` VALUES (1,'Diagnóstica'),(2,'ElectroRayma'),(3,'Eolnor'),(4,'Eufer'),(5,'Indra'),(6,'Ingeteam'),(7,'Izar Bonus'),(8,'Metalurgia BB'),(9,'Sarpel'),(10,'Tecnorenova'),(11,'W2PS'),(12,'Wind Energy'),(13,'Wintopower');
