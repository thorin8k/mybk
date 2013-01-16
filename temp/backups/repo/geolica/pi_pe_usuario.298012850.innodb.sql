/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pi_pe_usuario` (
  `id` bigint(20) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido1` varchar(45) DEFAULT NULL,
  `Apellido2` varchar(45) DEFAULT NULL,
  `Login` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `idPerfil` bigint(20) DEFAULT NULL,
  `idCliente` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pe_usuario_pe_perfil1` (`idPerfil`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `pi_pe_usuario` VALUES (1,'Julio','Freire','Rodríguez','julio','pjulio',1,0),(2,'Fernando','Blanco','Sierra','fernando','pfernando',2,0),(3,'Miguel Angel','Pena','Cao','michel','pmichel',3,1),(4,'Juan Luis','Gomez','Vazquez','juan','pjuan',1,0),(5,'Jesus','Cambeiro',NULL,'jcambeiro','jcambeiro',2,0),(6,'Jose','Castiñeira',NULL,'jcastineira','jcastineira',2,0),(7,'Francisco','Rodriguez',NULL,'frodriguez','frodriguez',2,0),(8,'Gonzalo','Turnes Andrade',NULL,'gturnes','gturnes',2,0),(9,'Miguel','Suarez',NULL,'msuarez','msuarez',1,0),(10,'Navantia','Navantia',NULL,'navantia','navantia',3,1),(11,'Eufer','Eufer',NULL,'eufer','eufer',3,2),(12,'Uxio','Canosa',NULL,'ucanosa','ucanosa',2,0),(13,'Jorge','Martinez',NULL,'jmartinez','jmartinez',2,0),(14,'Jesus','Lourido',NULL,'jlourido','jlourido',3,1),(15,'Juan Carlos','Calvo',NULL,'jcalvo','jcalvo',3,1),(16,'Daniel','Roibas',NULL,'droibas','droibas',3,1),(17,'Cristina','Rio Chao',NULL,'crio','crio',3,2),(18,'Andrea','Ramos',NULL,'aramos','aramos',3,2),(19,'Eduardo','Aviles',NULL,'eaviles','eaviles',3,2),(20,'Antonio','Mendez',NULL,'amendez','amendez',3,2),(21,'Miguel','Anton',' ','manton','manton',3,1);
