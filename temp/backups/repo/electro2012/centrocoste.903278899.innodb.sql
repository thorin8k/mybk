/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `centrocoste` (
  `codigo` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `activo` int(10) unsigned DEFAULT '1',
  `delegation_id` int(11) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `new_fk_constraint` (`delegation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `centrocoste` VALUES ('0','SIN CENTRO DE COSTE',1,0),('1','PRODUCCION',1,0),('1.1','PRODUCCION',1,0),('1.3','ENDESA',1,0),('10','ESTRUCTURA',1,0),('10.1','ESTRUCTURA',1,0),('11','SAN FERNANDO',1,0),('11.1','SAN FERNANDO',1,0),('2','FENE',1,0),('2.1','FENE',1,0),('3','FERROL',1,0),('3.1','FERROL',1,0),('4','TALLER DE CUADROS',1,0),('4.1','TALLER DE CUADROS',1,0),('5','INGENIERIA',1,0),('5.1','INGENIERIA',1,0),('6','EOLICO',1,0),('6.1','EOLICO',1,0),('6.2','EOLICOS CAMARIÑAS',1,0),('6.3','EOLICOS DUMBRIA',1,0),('7','7',1,0),('8','8',1,0),('9','TALLER DE MOTORES',1,0),('9.1','TALLER DE MOTORES',1,0),('9.2','TALLER SIEMENS',1,0);
