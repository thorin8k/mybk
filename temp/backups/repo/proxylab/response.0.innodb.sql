/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `response` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_time` datetime DEFAULT NULL,
  `response` longtext COLLATE utf8_spanish_ci,
  `transformed_response` longtext COLLATE utf8_spanish_ci,
  `input` bigint(20) DEFAULT NULL,
  `output` bigint(20) DEFAULT NULL,
  `receiver` bigint(20) DEFAULT NULL,
  `sender` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKEBB71441F4303732` (`input`),
  KEY `FKEBB714412FD9016C` (`sender`),
  KEY `FKEBB7144135A4D126` (`receiver`),
  KEY `FKEBB71441BCAA8EE` (`output`),
  CONSTRAINT `FKEBB714412FD9016C` FOREIGN KEY (`sender`) REFERENCES `application` (`id`),
  CONSTRAINT `FKEBB7144135A4D126` FOREIGN KEY (`receiver`) REFERENCES `application` (`id`),
  CONSTRAINT `FKEBB71441BCAA8EE` FOREIGN KEY (`output`) REFERENCES `outputmessage` (`id`),
  CONSTRAINT `FKEBB71441F4303732` FOREIGN KEY (`input`) REFERENCES `incomingmessage` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
