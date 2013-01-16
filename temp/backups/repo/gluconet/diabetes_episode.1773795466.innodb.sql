/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diabetes_episode` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `base_value` float DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `creation_user_id` bigint(20) DEFAULT NULL,
  `hba1c` float DEFAULT NULL,
  `height` float DEFAULT NULL,
  `high_limit` float DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `low_limit` float DEFAULT NULL,
  `observations` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `diabetes_type` bigint(20) DEFAULT NULL,
  `module` bigint(20) DEFAULT NULL,
  `patient` bigint(20) DEFAULT NULL,
  `treatment_type` bigint(20) DEFAULT NULL,
  `inidate` datetime DEFAULT NULL,
  `medicine_presentation` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK881B43BFFDE78591` (`patient`),
  KEY `FK881B43BF812848AC` (`diabetes_type`),
  KEY `FK881B43BFFF701071` (`module`),
  KEY `FK881B43BF699288BA` (`treatment_type`),
  KEY `FK881B43BF6044A74C` (`medicine_presentation`),
  CONSTRAINT `FK881B43BF6044A74C` FOREIGN KEY (`medicine_presentation`) REFERENCES `medicine_presentation` (`id`),
  CONSTRAINT `FK881B43BF699288BA` FOREIGN KEY (`treatment_type`) REFERENCES `treatment_type` (`id`),
  CONSTRAINT `FK881B43BF812848AC` FOREIGN KEY (`diabetes_type`) REFERENCES `diabetes_type` (`id`),
  CONSTRAINT `FK881B43BFFDE78591` FOREIGN KEY (`patient`) REFERENCES `patient` (`id`),
  CONSTRAINT `FK881B43BFFF701071` FOREIGN KEY (`module`) REFERENCES `module` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `diabetes_episode` VALUES (1,99,'2011-07-17 07:17:20',1,7,188,140,0x01,70,'Paciente con antencedentes familiares de diabetes ',0,109,1,1,1,2,'2011-07-17 07:17:20',1),(2,100,'2011-07-17 07:17:20',1,5,188,140,0x00,69,'Paciente con antencedentes familiares de diabetes',28,67,2,1,2,4,'2007-05-01 00:00:00',8),(3,100,'2011-07-17 07:17:20',1,6,188,140,0x00,70,'Paciente con antencedentes familiares de diabetes ',0,70,1,1,3,2,'2011-07-17 07:17:20',3),(4,100,'2011-07-17 07:17:20',1,6,188,140,0x00,70,'Paciente con antencedentes familiares de diabetes ',0,75,1,1,4,2,'2011-07-17 07:17:20',4),(5,100,'2011-07-17 07:17:20',1,6,188,140,0x00,70,'Paciente con antencedentes familiares de diabetes ',1,98,2,1,5,2,'2011-07-17 00:00:00',5),(6,100,'2011-07-17 07:17:20',1,6,188,140,0x00,70,'Paciente con antencedentes familiares de diabetes ',0,82,3,1,6,2,'2011-07-17 07:17:20',6),(7,109,'2011-07-17 07:17:20',1,6,175,123,0x00,70,'Paciente sin antencedentes familiares de diabetes ',3,111,7,1,7,4,'2011-05-04 00:00:00',7),(8,100,'2011-07-17 07:17:20',1,5,188,140,0x00,70,'Paciente con antencedentes familiares de diabetes ',1,64,1,1,8,2,'2011-07-17 00:00:00',8),(9,100,'2011-07-17 07:17:20',1,6,188,140,0x00,70,'Paciente con antencedentes familiares de diabetes ',0,55,2,1,9,2,'2011-07-17 07:17:20',9),(10,100,'2011-07-17 07:17:20',1,6,188,140,0x00,70,'Paciente con antencedentes familiares de diabetes ',0,48,3,1,10,2,'2011-07-17 07:17:20',10),(11,100,'2011-07-17 07:17:20',1,6,188,140,0x00,70,'Paciente con antencedentes familiares de diabetes ',0,98,1,1,11,2,'2011-07-17 07:17:20',11),(12,100,'2011-07-17 07:17:20',1,6,188,140,0x00,70,'Paciente con antencedentes familiares de diabetes ',0,81,1,1,12,2,'2011-07-17 07:17:20',12),(13,100,'2011-07-17 07:17:20',1,6,188,140,0x00,70,'Paciente con antencedentes familiares de diabetes ',0,74,1,1,13,2,'2011-07-17 07:17:20',13),(14,100,'2011-07-17 07:17:20',1,6,188,140,0x00,70,'Paciente con antencedentes familiares de diabetes ',0,66,3,1,14,2,'2011-07-17 07:17:20',1),(15,100,'2011-07-17 07:17:20',1,6,188,140,0x00,70,'Paciente con antencedentes familiares de diabetes ',0,56,4,1,15,2,'2011-07-17 07:17:20',2),(16,100,'2011-07-17 07:17:20',1,6,188,140,0x00,70,'Paciente con antencedentes familiares de diabetes ',0,62,5,1,16,2,'2011-07-17 07:17:20',3),(17,100,'2011-07-17 07:17:20',1,6,188,140,0x00,70,'Paciente con antencedentes familiares de diabetes ',0,59,6,1,17,2,'2011-07-17 07:17:20',4),(18,100,'2011-07-17 07:17:20',1,6,188,140,0x00,70,'Paciente con antencedentes familiares de diabetes ',0,87,6,1,18,2,'2011-07-17 07:17:20',5),(19,100,'2011-07-17 07:17:20',1,6,188,140,0x00,70,'Paciente con antencedentes familiares de diabetes ',0,58,2,1,19,2,'2011-07-17 07:17:20',6),(20,100,'2011-07-17 07:17:20',1,6,188,140,0x00,70,'Paciente con antencedentes familiares de diabetes ',0,61,1,1,20,2,'2011-07-17 07:17:20',9),(22,100,'2011-08-09 08:41:49',3,4,165,140,0x00,90,'no hay obaservaciones reseñables',0,80,6,1,NULL,3,'2011-08-03 00:00:00',5),(23,111,'2011-08-09 09:04:40',3,5,156,143,0x00,83,'asdfasdf',0,122,3,1,NULL,2,'2011-08-01 00:00:00',5),(24,100,'2011-08-09 09:33:50',3,5,171,130,0x00,90,'nada q comentar',0,50,2,1,1,3,'2011-03-01 00:00:00',14),(25,333,'2011-09-29 12:21:30',3,5,188,140,0x00,88,'Paciente con antencedentes familiares de diabetes',0,67,4,1,2,4,'2011-05-01 00:00:00',8);
