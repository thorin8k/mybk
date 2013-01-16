/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_date` datetime DEFAULT NULL,
  `creation_user_id` bigint(20) DEFAULT NULL,
  `device_login` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `surname1` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `surname2` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `address` bigint(20) DEFAULT NULL,
  `centre` bigint(20) DEFAULT NULL,
  `languaje` bigint(20) DEFAULT NULL,
  `profile` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK459C5729D36EE76F` (`address`),
  KEY `FK459C5729DC3E5F4F` (`centre`),
  KEY `FK459C5729375CC2D9` (`profile`),
  KEY `FK459C5729913BFB7C` (`languaje`),
  CONSTRAINT `FK459C5729375CC2D9` FOREIGN KEY (`profile`) REFERENCES `profile` (`id`),
  CONSTRAINT `FK459C5729913BFB7C` FOREIGN KEY (`languaje`) REFERENCES `lang` (`id`),
  CONSTRAINT `FK459C5729D36EE76F` FOREIGN KEY (`address`) REFERENCES `address` (`id`),
  CONSTRAINT `FK459C5729DC3E5F4F` FOREIGN KEY (`centre`) REFERENCES `centre` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `app_user` VALUES (1,'2011-03-23 14:05:33',1,'DNS0001',0x01,'jr','Javier','xxx','Roman','La_huerta',5,2,8,3,1),(2,'2011-03-23 14:05:33',1,'DNS0002',0x00,'admin','Gervasio','xxx','Lopez','Dos Santos',5,3,2,1,1),(3,'2011-05-16 01:15:21',1,'DNS0003',0x00,'administrador','Lorena','xxx','Hernandez','Berasategui',8,4,3,2,1),(4,'2011-09-13 12:46:43',3,NULL,0x00,'sh','Sheldon Lee','xxx','Cooper','',0,26,2,4,1),(5,'2011-09-13 12:47:59',3,NULL,0x01,'ls','Lars','xxx','Ulrich','visc',2,27,3,3,3);
