/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forwardsubscriber` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comments` longtext COLLATE utf8_spanish_ci,
  `creation_time` datetime DEFAULT NULL,
  `deletion_time` datetime DEFAULT NULL,
  `enabled` int(11) DEFAULT NULL,
  `extra_data` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `last_touch_time` datetime DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `source_port` int(11) NOT NULL,
  `creation_user` bigint(20) DEFAULT NULL,
  `deletion_user` bigint(20) DEFAULT NULL,
  `destination` bigint(20) DEFAULT NULL,
  `last_touch_user` bigint(20) DEFAULT NULL,
  `message_channel` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKA11E6CEDCC9FB725` (`creation_user`),
  KEY `FKA11E6CED3A83FF96` (`deletion_user`),
  KEY `FKA11E6CEDA482FC80` (`message_channel`),
  KEY `FKA11E6CED5A14EC0E` (`last_touch_user`),
  KEY `FKA11E6CED109F2B45` (`destination`),
  CONSTRAINT `FKA11E6CED109F2B45` FOREIGN KEY (`destination`) REFERENCES `application` (`id`),
  CONSTRAINT `FKA11E6CED3A83FF96` FOREIGN KEY (`deletion_user`) REFERENCES `console_user` (`id`),
  CONSTRAINT `FKA11E6CED5A14EC0E` FOREIGN KEY (`last_touch_user`) REFERENCES `console_user` (`id`),
  CONSTRAINT `FKA11E6CEDA482FC80` FOREIGN KEY (`message_channel`) REFERENCES `messagechannel` (`id`),
  CONSTRAINT `FKA11E6CEDCC9FB725` FOREIGN KEY (`creation_user`) REFERENCES `console_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
