/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pi_gamainspeccion` (
  `id` int(11) NOT NULL,
  `idmodeloaerogenerador` int(11) NOT NULL,
  `fecharev` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `columnapdf` int(2) NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `PlantillaPdf` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `ft_tipoi_tipoa` (`idmodeloaerogenerador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `pi_gamainspeccion` VALUES (1,1,'31-08-2006 - ECN 21916',1,'500 horas','CH 537795 rev 31-08-2006 ECN 21916.pdf'),(2,1,'31-08-2006 - ECN 21916',3,'Anual','CH 537795 rev 31-08-2006 ECN 21916.pdf'),(3,1,'31-08-2006 - ECN 21916',2,'Semestral','CH 537795 rev 31-08-2006 ECN 21916.pdf'),(4,1,'31-08-2006 - ECN 21916',4,'Otros','CH 537795 rev 31-08-2006 ECN 21916.pdf'),(5,2,'31-08-2006 - ECN 21916',1,'500 horas','Inspec_Eufer.pdf'),(6,2,'31-08-2006 - ECN 21916',3,'Anual','Inspec_Eufer.pdf'),(7,2,'31-08-2006 - ECN 21916',2,'Semestral','Inspec_Eufer.pdf'),(8,2,'31-08-2006 - ECN 21916',4,'Otros','Inspec_Eufer.pdf');
