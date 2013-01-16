/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enricherservice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comments` longtext COLLATE utf8_spanish_ci,
  `creation_time` datetime DEFAULT NULL,
  `deletion_time` datetime DEFAULT NULL,
  `destination2proxylab_xslt` longtext COLLATE utf8_spanish_ci,
  `enabled` int(11) DEFAULT NULL,
  `input2proxylab_xslt` longtext COLLATE utf8_spanish_ci,
  `last_touch_time` datetime DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `proxylab2destination_xslt` longtext COLLATE utf8_spanish_ci,
  `response_in_pipes` int(11) DEFAULT NULL,
  `application` bigint(20) DEFAULT NULL,
  `channel` bigint(20) DEFAULT NULL,
  `creation_user` bigint(20) DEFAULT NULL,
  `deletion_user` bigint(20) DEFAULT NULL,
  `last_touch_user` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKE8E3EA03CC9FB725` (`creation_user`),
  KEY `FKE8E3EA03C27CEC87` (`application`),
  KEY `FKE8E3EA033A83FF96` (`deletion_user`),
  KEY `FKE8E3EA035A14EC0E` (`last_touch_user`),
  KEY `FKE8E3EA034B5EE76D` (`channel`),
  CONSTRAINT `FKE8E3EA033A83FF96` FOREIGN KEY (`deletion_user`) REFERENCES `console_user` (`id`),
  CONSTRAINT `FKE8E3EA034B5EE76D` FOREIGN KEY (`channel`) REFERENCES `channel` (`id`),
  CONSTRAINT `FKE8E3EA035A14EC0E` FOREIGN KEY (`last_touch_user`) REFERENCES `console_user` (`id`),
  CONSTRAINT `FKE8E3EA03C27CEC87` FOREIGN KEY (`application`) REFERENCES `application` (`id`),
  CONSTRAINT `FKE8E3EA03CC9FB725` FOREIGN KEY (`creation_user`) REFERENCES `console_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
