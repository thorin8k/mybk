/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messagexslt` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comments` longtext COLLATE utf8_spanish_ci,
  `creation_time` datetime DEFAULT NULL,
  `deletion_time` datetime DEFAULT NULL,
  `enabled` int(11) DEFAULT NULL,
  `encoding` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `last_touch_time` datetime DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `source_message_type` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `to_pipes` int(11) DEFAULT NULL,
  `transformation_expression` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `xslt_content` longtext COLLATE utf8_spanish_ci,
  `xslt_path` longtext COLLATE utf8_spanish_ci,
  `creation_user` bigint(20) DEFAULT NULL,
  `deletion_user` bigint(20) DEFAULT NULL,
  `destination` bigint(20) DEFAULT NULL,
  `last_touch_user` bigint(20) DEFAULT NULL,
  `source` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKCC05EE4ACC9FB725` (`creation_user`),
  KEY `FKCC05EE4A3A83FF96` (`deletion_user`),
  KEY `FKCC05EE4A30694F52` (`source`),
  KEY `FKCC05EE4A5A14EC0E` (`last_touch_user`),
  KEY `FKCC05EE4A109F2B45` (`destination`),
  CONSTRAINT `FKCC05EE4A109F2B45` FOREIGN KEY (`destination`) REFERENCES `application` (`id`),
  CONSTRAINT `FKCC05EE4A30694F52` FOREIGN KEY (`source`) REFERENCES `application` (`id`),
  CONSTRAINT `FKCC05EE4A3A83FF96` FOREIGN KEY (`deletion_user`) REFERENCES `console_user` (`id`),
  CONSTRAINT `FKCC05EE4A5A14EC0E` FOREIGN KEY (`last_touch_user`) REFERENCES `console_user` (`id`),
  CONSTRAINT `FKCC05EE4ACC9FB725` FOREIGN KEY (`creation_user`) REFERENCES `console_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
