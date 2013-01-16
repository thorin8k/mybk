/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(75) CHARACTER SET utf8 NOT NULL,
  `yii` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `perfil` VALUES (0,'Perfil por Defecto',NULL),(1,'Administrador',NULL),(2,'Administrativo',NULL),(3,'Almacen',NULL),(4,'Compras',NULL),(6,'Completo',NULL);
