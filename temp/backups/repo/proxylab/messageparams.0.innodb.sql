/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messageparams` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ack_on_completion` int(11) DEFAULT NULL,
  `async_processing` int(11) NOT NULL,
  `comments` longtext COLLATE utf8_spanish_ci,
  `creation_time` datetime DEFAULT NULL,
  `deletion_time` datetime DEFAULT NULL,
  `enabled` int(11) DEFAULT NULL,
  `last_touch_time` datetime DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `retries` int(11) DEFAULT NULL,
  `source_message_type` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `creation_user` bigint(20) DEFAULT NULL,
  `deletion_user` bigint(20) DEFAULT NULL,
  `destination` bigint(20) DEFAULT NULL,
  `last_touch_user` bigint(20) DEFAULT NULL,
  `source` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKD3A1984DCC9FB725` (`creation_user`),
  KEY `FKD3A1984D3A83FF96` (`deletion_user`),
  KEY `FKD3A1984D30694F52` (`source`),
  KEY `FKD3A1984D5A14EC0E` (`last_touch_user`),
  KEY `FKD3A1984D109F2B45` (`destination`),
  CONSTRAINT `FKD3A1984D109F2B45` FOREIGN KEY (`destination`) REFERENCES `application` (`id`),
  CONSTRAINT `FKD3A1984D30694F52` FOREIGN KEY (`source`) REFERENCES `application` (`id`),
  CONSTRAINT `FKD3A1984D3A83FF96` FOREIGN KEY (`deletion_user`) REFERENCES `console_user` (`id`),
  CONSTRAINT `FKD3A1984D5A14EC0E` FOREIGN KEY (`last_touch_user`) REFERENCES `console_user` (`id`),
  CONSTRAINT `FKD3A1984DCC9FB725` FOREIGN KEY (`creation_user`) REFERENCES `console_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
