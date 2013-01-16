/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messagechannel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comments` longtext COLLATE utf8_spanish_ci,
  `creation_time` datetime DEFAULT NULL,
  `deletion_time` datetime DEFAULT NULL,
  `enabled` int(11) DEFAULT NULL,
  `last_touch_time` datetime DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `source_message_type` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `channel` bigint(20) DEFAULT NULL,
  `creation_user` bigint(20) DEFAULT NULL,
  `deletion_user` bigint(20) DEFAULT NULL,
  `destination` bigint(20) DEFAULT NULL,
  `last_touch_user` bigint(20) DEFAULT NULL,
  `source` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKFBE8B71CCC9FB725` (`creation_user`),
  KEY `FKFBE8B71C3A83FF96` (`deletion_user`),
  KEY `FKFBE8B71C30694F52` (`source`),
  KEY `FKFBE8B71C5A14EC0E` (`last_touch_user`),
  KEY `FKFBE8B71C109F2B45` (`destination`),
  KEY `FKFBE8B71C4B5EE76D` (`channel`),
  CONSTRAINT `FKFBE8B71C109F2B45` FOREIGN KEY (`destination`) REFERENCES `application` (`id`),
  CONSTRAINT `FKFBE8B71C30694F52` FOREIGN KEY (`source`) REFERENCES `application` (`id`),
  CONSTRAINT `FKFBE8B71C3A83FF96` FOREIGN KEY (`deletion_user`) REFERENCES `console_user` (`id`),
  CONSTRAINT `FKFBE8B71C4B5EE76D` FOREIGN KEY (`channel`) REFERENCES `channel` (`id`),
  CONSTRAINT `FKFBE8B71C5A14EC0E` FOREIGN KEY (`last_touch_user`) REFERENCES `console_user` (`id`),
  CONSTRAINT `FKFBE8B71CCC9FB725` FOREIGN KEY (`creation_user`) REFERENCES `console_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
