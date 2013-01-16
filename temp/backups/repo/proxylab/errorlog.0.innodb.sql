/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `errorlog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `error_message` longtext COLLATE utf8_spanish_ci,
  `error_time` datetime DEFAULT NULL,
  `input` bigint(20) DEFAULT NULL,
  `output` bigint(20) DEFAULT NULL,
  `receiver` bigint(20) DEFAULT NULL,
  `sender` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5337343CF4303732` (`input`),
  KEY `FK5337343C2FD9016C` (`sender`),
  KEY `FK5337343C35A4D126` (`receiver`),
  KEY `FK5337343CBCAA8EE` (`output`),
  CONSTRAINT `FK5337343C2FD9016C` FOREIGN KEY (`sender`) REFERENCES `application` (`id`),
  CONSTRAINT `FK5337343C35A4D126` FOREIGN KEY (`receiver`) REFERENCES `application` (`id`),
  CONSTRAINT `FK5337343CBCAA8EE` FOREIGN KEY (`output`) REFERENCES `outputmessage` (`id`),
  CONSTRAINT `FK5337343CF4303732` FOREIGN KEY (`input`) REFERENCES `incomingmessage` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
