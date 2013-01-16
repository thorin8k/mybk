/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `Id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Apellido1` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Apellido2` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `login` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `password` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `PerfilId` bigint(20) unsigned DEFAULT NULL,
  `Deleted` tinyint(1) unsigned DEFAULT NULL,
  `ClienteId` bigint(20) unsigned DEFAULT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `email` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_usuario_perfil1` (`PerfilId`),
  KEY `FK_usuario_2` (`ClienteId`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `usuario` VALUES (1,'Julio','Freire','Rodríguez','ljulio','pjulio',1,0,NULL,5,5,NULL),(2,'Miguel','Pena','Cao','lmiguel','pmiguel',2,0,NULL,NULL,5,NULL),(3,'Fernando','Blanco','Sierra','lfernando','pfernando',3,0,1,NULL,5,NULL),(4,'Juan Luis','Gomez','Vazquez','juan','pjuan',1,0,NULL,NULL,5,NULL),(5,'Jesus','Cambeiro','','jcambeiro','jcambeiro',2,0,NULL,NULL,5,NULL),(6,'Jose','Castiñeira','','jcastineira','jcastineira',1,0,NULL,NULL,5,NULL),(7,'Francisco','Rodriguez','','frodriguez','frodriguez',2,0,NULL,NULL,5,NULL),(8,'Gonzalo','Turnes ','Andrade','gturnes','gturnes',2,0,NULL,NULL,5,NULL),(9,'Miguel','Suarez','','msuarez','msuarez',1,0,NULL,NULL,5,NULL),(10,'Navantia','Navantia','','navantia','navantia',3,0,1,NULL,5,NULL),(11,'Eufer','Eufer','','eufer','eufer',3,0,2,NULL,5,NULL),(12,'Uxio','Canosa','','ucanosa','ucanosa',2,0,NULL,NULL,5,NULL),(13,'Jorge','Martinez','','jmartinez','jmartinez',2,0,NULL,NULL,5,NULL),(14,'Jesus','Lourido','','jlourido','jlourido',3,0,1,NULL,5,NULL),(15,'Juan Carlos','Calvo','','jcalvo','jcalvo',3,0,1,NULL,5,NULL),(16,'Daniel','Roibas','','droibas','droibas',3,0,1,NULL,5,NULL),(17,'Cristina','Rio','Chao','crio','crio',3,0,3,NULL,5,'iago.sardina@landrasistemas.es'),(18,'Andrea','Ramos','','aramos','aramos',3,0,3,NULL,5,NULL),(19,'Eduardo','Aviles','','eaviles','eaviles',3,0,2,NULL,5,NULL),(20,'Antonio','Mendez','','amendez','amendez',3,0,3,NULL,5,''),(21,'Jose Manuel','Gonzalez','Varela','jmgonzalez','jmgonzalez',1,0,NULL,NULL,5,NULL),(22,'Miguel','Anton','.','manton','manton',3,0,1,NULL,5,NULL),(101,'Administrador',NULL,NULL,'admin','admin',2,NULL,NULL,2,1,NULL),(102,NULL,NULL,NULL,'admAceites','admin',NULL,NULL,NULL,4,5,NULL),(103,'Demostración','','','demo','demo',3,NULL,7,NULL,NULL,''),(105,'Genaro','Lopez','Salazar','glopez','glopez',3,NULL,3,NULL,NULL,NULL),(106,'emoure','','','emoure','emoure',3,NULL,5,NULL,NULL,NULL),(107,'aconde','','','aconde','aconde',3,NULL,5,NULL,NULL,'fyrlakith@gmail.com'),(108,'jcrusat','','','jcrusat','jcrusat',3,NULL,4,NULL,NULL,NULL),(109,'jalba','','','jalba','jalba',3,NULL,4,NULL,NULL,NULL),(110,'afierro','','','afierro','afierro',3,NULL,4,NULL,NULL,NULL);
