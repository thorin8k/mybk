/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jdbcinput_jdbc_input_subscriber` (
  `jdbcinput` bigint(20) NOT NULL,
  `jdbc_input_subscriber` bigint(20) NOT NULL,
  PRIMARY KEY (`jdbcinput`,`jdbc_input_subscriber`),
  UNIQUE KEY `jdbc_input_subscriber` (`jdbc_input_subscriber`),
  KEY `FK80BE1A312FC273F8` (`jdbc_input_subscriber`),
  KEY `FK80BE1A31DF1D2E5` (`jdbcinput`),
  CONSTRAINT `FK80BE1A312FC273F8` FOREIGN KEY (`jdbc_input_subscriber`) REFERENCES `application` (`id`),
  CONSTRAINT `FK80BE1A31DF1D2E5` FOREIGN KEY (`jdbcinput`) REFERENCES `jdbcinput` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
