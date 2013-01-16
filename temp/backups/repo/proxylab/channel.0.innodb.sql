/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ack_expected` int(11) DEFAULT NULL,
  `classname` longtext COLLATE utf8_spanish_ci,
  `comments` longtext COLLATE utf8_spanish_ci,
  `creation_time` datetime DEFAULT NULL,
  `deletion_time` datetime DEFAULT NULL,
  `direction` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `enabled` int(11) DEFAULT NULL,
  `last_touch_time` datetime DEFAULT NULL,
  `max_sent_retries` int(11) DEFAULT NULL,
  `name` longtext COLLATE utf8_spanish_ci,
  `params` longtext COLLATE utf8_spanish_ci,
  `creation_user` bigint(20) DEFAULT NULL,
  `deletion_user` bigint(20) DEFAULT NULL,
  `last_touch_user` bigint(20) DEFAULT NULL,
  `type` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2C0B7D03CC9FB725` (`creation_user`),
  KEY `FK2C0B7D033A83FF96` (`deletion_user`),
  KEY `FK2C0B7D0319C2B7FE` (`type`),
  KEY `FK2C0B7D035A14EC0E` (`last_touch_user`),
  CONSTRAINT `FK2C0B7D0319C2B7FE` FOREIGN KEY (`type`) REFERENCES `channeltype` (`id`),
  CONSTRAINT `FK2C0B7D033A83FF96` FOREIGN KEY (`deletion_user`) REFERENCES `console_user` (`id`),
  CONSTRAINT `FK2C0B7D035A14EC0E` FOREIGN KEY (`last_touch_user`) REFERENCES `console_user` (`id`),
  CONSTRAINT `FK2C0B7D03CC9FB725` FOREIGN KEY (`creation_user`) REFERENCES `console_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
