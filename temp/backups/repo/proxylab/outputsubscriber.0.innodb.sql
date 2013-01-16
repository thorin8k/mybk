/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outputsubscriber` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comments` longtext COLLATE utf8_spanish_ci,
  `creation_time` datetime DEFAULT NULL,
  `deletion_time` datetime DEFAULT NULL,
  `enabled` int(11) DEFAULT NULL,
  `last_touch_time` datetime DEFAULT NULL,
  `message_type` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `creation_user` bigint(20) DEFAULT NULL,
  `deletion_user` bigint(20) DEFAULT NULL,
  `destination` bigint(20) DEFAULT NULL,
  `last_touch_user` bigint(20) DEFAULT NULL,
  `source` bigint(20) DEFAULT NULL,
  `subscriber` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK44765829CC9FB725` (`creation_user`),
  KEY `FK447658291D24B39F` (`subscriber`),
  KEY `FK447658293A83FF96` (`deletion_user`),
  KEY `FK4476582930694F52` (`source`),
  KEY `FK447658295A14EC0E` (`last_touch_user`),
  KEY `FK44765829109F2B45` (`destination`),
  CONSTRAINT `FK44765829109F2B45` FOREIGN KEY (`destination`) REFERENCES `application` (`id`),
  CONSTRAINT `FK447658291D24B39F` FOREIGN KEY (`subscriber`) REFERENCES `application` (`id`),
  CONSTRAINT `FK4476582930694F52` FOREIGN KEY (`source`) REFERENCES `application` (`id`),
  CONSTRAINT `FK447658293A83FF96` FOREIGN KEY (`deletion_user`) REFERENCES `console_user` (`id`),
  CONSTRAINT `FK447658295A14EC0E` FOREIGN KEY (`last_touch_user`) REFERENCES `console_user` (`id`),
  CONSTRAINT `FK44765829CC9FB725` FOREIGN KEY (`creation_user`) REFERENCES `console_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
