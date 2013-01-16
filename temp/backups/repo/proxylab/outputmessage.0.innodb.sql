/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outputmessage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_time` datetime DEFAULT NULL,
  `decoded_payload` longtext COLLATE utf8_spanish_ci,
  `enriched` int(11) DEFAULT NULL,
  `error_message` longtext COLLATE utf8_spanish_ci,
  `proxy_lab_message` longtext COLLATE utf8_spanish_ci,
  `retries` int(11) DEFAULT NULL,
  `sent_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `transformation_time` datetime DEFAULT NULL,
  `transformed_payload` longtext COLLATE utf8_spanish_ci,
  `input_message` bigint(20) DEFAULT NULL,
  `message_channel` bigint(20) DEFAULT NULL,
  `receiver` bigint(20) DEFAULT NULL,
  `sender` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK54FCF3E62FD9016C` (`sender`),
  KEY `FK54FCF3E6A482FC80` (`message_channel`),
  KEY `FK54FCF3E6CE6373FA` (`input_message`),
  KEY `FK54FCF3E635A4D126` (`receiver`),
  CONSTRAINT `FK54FCF3E62FD9016C` FOREIGN KEY (`sender`) REFERENCES `application` (`id`),
  CONSTRAINT `FK54FCF3E635A4D126` FOREIGN KEY (`receiver`) REFERENCES `application` (`id`),
  CONSTRAINT `FK54FCF3E6A482FC80` FOREIGN KEY (`message_channel`) REFERENCES `messagechannel` (`id`),
  CONSTRAINT `FK54FCF3E6CE6373FA` FOREIGN KEY (`input_message`) REFERENCES `incomingmessage` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
