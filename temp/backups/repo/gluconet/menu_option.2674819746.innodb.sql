/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_option` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bread_crump` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `extradata` varchar(1000) COLLATE utf8_spanish_ci DEFAULT NULL,
  `is_group` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `priority` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `view_token` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `parent` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5AE57755BB451E77` (`parent`),
  CONSTRAINT `FK5AE57755BB451E77` FOREIGN KEY (`parent`) REFERENCES `menu_option` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `menu_option` VALUES (1,'Administración',NULL,1,'ADMINISTRACION',3,0,NULL,NULL),(2,'Gestion Diabetes',NULL,1,'GESTIONDIAB',1,0,NULL,NULL),(3,'Estadísticas',NULL,1,'ESTADISTICAS',2,0,NULL,NULL),(4,'Centros',NULL,0,'CENTROS',1,0,'adminCentres',1),(5,'Perfiles',NULL,0,'PERFIL',2,0,'adminProfiles',1),(6,'Usuarios',NULL,0,'USUARIO',3,0,'adminUsers',1),(7,'Momentos',NULL,0,'MOMENTOS',7,0,'adminMoments',2),(8,'Búsqueda de pacientes',NULL,0,'BUSCAR_PACIENTE',2,0,'searchPatient',2),(9,'Tests Glucosa',NULL,0,'GLUCO_TESTS',6,0,'glucoTest',2),(10,'Consulta de resultados',NULL,0,'CONSULTA_RESULTADOS',1,0,'results',2),(11,'DatosPaciente','HIDDEN',0,'FICHA_PACIENTE',3,0,'patientData',2),(12,'EstadisticasPaciente','HIDDEN',0,'PATIENT_DIABSTATS',4,0,'patientStats',2),(13,'ResultadosPaciente','HIDDEN',0,'PATIENT_RESULTS',4,0,'patientResults',2),(15,'Totales',NULL,0,'STAT_DIAB_TOTAL',1,0,'statDiabTotal',3),(16,'Tendencia1mes',NULL,0,'STAT_DIAB_TRENDMONTH',3,0,'statDiabTrendMonth',3),(17,'TendeciaDiaSemana',NULL,0,'STAT_DIAB_TRENDWEEKDAY',2,0,'statDiabTrendWeekDay',3);
