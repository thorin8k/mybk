/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parque` (
  `Id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Abreviatura` varchar(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ClienteId` bigint(20) unsigned DEFAULT NULL,
  `Deleted` tinyint(1) unsigned DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `delegation_id` int(11) unsigned NOT NULL,
  `coord1` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `coord2` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `id_UNIQUE` (`Id`),
  KEY `idcliente` (`ClienteId`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `parque` VALUES (1,'PR','Ponte Rebordelo',6,0,'',25,'',''),(2,'VG','Valsagueiro',6,0,'',25,'',''),(3,'SR','Silvarredonda',3,0,'',23,'',''),(4,'PF','Peñaforcada',4,0,'',24,'',''),(5,'DV','Do Vilan',4,0,'',24,'',''),(6,'VV','Viravento',4,0,'',24,'',''),(47,'','MONTOUTO',5,0,'P.E. Montouto 2000',22,'',''),(48,NULL,'IRIXO',5,0,'P.E. Irixo',22,'43.365687','-8.392267'),(49,NULL,'CALUENGO',3,0,'P.E. Caluengo',23,'43.491973','-8.209276'),(50,NULL,'CANREDONDO',3,0,'P.E. Canredondo',23,'43.502931','-8.192632'),(51,NULL,'CASA',3,0,'P.E. Casa',23,'43.221897222222225','-7.785825 '),(52,NULL,'CODESAS I',3,0,'P.E. Codesas I',23,'42.992701','-8.015484'),(53,'','CODESAS II',3,0,'P.E. Codesas II',23,'42.99158888','-8.01444722'),(54,NULL,'LA LOSILLA',3,0,'P.E. La Losilla',23,'',''),(55,NULL,'LA PEÑA I',3,0,'P.E. La peña I',23,'',''),(56,NULL,'LA SIA',3,0,'P.E. La Sia',23,'',''),(57,NULL,'LOMA GORDA',3,0,'P.E. Loma Gorda',23,'',''),(58,NULL,'MALAGÓN I',3,0,'P.E. Malagón I',23,'',''),(59,NULL,'MALAGÓN II',3,0,'P.E. Malagón II',23,'',''),(60,NULL,'MONTEJO',3,0,'P.E. Montejo',23,'',''),(61,NULL,'MONTIJA',3,0,'P.E. Montija',23,'',''),(63,NULL,'SAN ESTEBAN 1A',3,0,'P.E. San Esteban 1A',23,'',''),(64,NULL,'SAN GIL',3,0,'P.E. San Gil',23,'',''),(65,NULL,'SAN ESTEBAN 1B - EGASTIAGA',3,0,'P.E. San Esteban 1B - Egastiaga',23,'',''),(66,NULL,'SAN ESTEBAN 2A - AÑORBE',3,0,'P.E. San Esteban 2A - Añorbe',23,'',''),(67,NULL,'SAN ESTEBAN 2B - OLCOZ',3,0,'P.E. San Esteban 2B - Olcoz',23,'',''),(68,NULL,'SAN ESTEBAN 2C - CARAQUIDOYA',3,0,'P.E. San Esteban 2C - Caraquidoya',23,'',''),(69,NULL,'SIERRA OLIVA',3,0,'P.E. Sierra Oliva',23,'',''),(71,NULL,'UZKITA',3,0,'P.E. Uzkita',23,'',''),(72,NULL,'VALDELACASA',3,0,'P.E. Valdelacasa',23,'',''),(73,NULL,'VALDELIN',3,0,'P.E. Valdelín',23,'',''),(74,'','VALDELÍN AMPLIACIÓN',3,0,'P.E. Valdelín Ampliación',23,'',''),(75,NULL,'VALDEPERO',3,0,'P.E. Valdepero',23,'',''),(77,NULL,'SILVAREDONDA',NULL,NULL,'',0,'',''),(79,NULL,'PEÑA I',NULL,NULL,'',0,'',''),(80,'','Demo',7,0,'demo',0,'','');
