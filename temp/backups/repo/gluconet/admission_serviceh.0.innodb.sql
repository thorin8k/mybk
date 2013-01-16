/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admission_serviceh` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admission_comments` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `admission_end_date` datetime DEFAULT NULL,
  `admission_start_date` datetime DEFAULT NULL,
  `bed` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `build_module` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `creation_user_id` bigint(20) DEFAULT NULL,
  `floor` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `is_admission_active` bit(1) DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  `mod_user_id` bigint(20) DEFAULT NULL,
  `ref_id` bigint(20) DEFAULT NULL,
  `room` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `admission_reason` bigint(20) DEFAULT NULL,
  `admission_reason_id` bigint(20) DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK856823C9D99CEF6E` (`admission_reason`),
  CONSTRAINT `FK856823C9D99CEF6E` FOREIGN KEY (`admission_reason`) REFERENCES `admission_reason` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
