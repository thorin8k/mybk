/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `empleado_id` int(11) NOT NULL,
  `perfil_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`iduser`) USING BTREE,
  KEY `FK_user_3` (`perfil_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `user` VALUES (3,'admin','21232f297a57a5a743894a0e4a801fc3',4997,1),(4,'julia','c2e285cb33cecdbeb83d2189e983a8c0',0,0),(5,'jgonzalez','e455b6d30a9ae9541ea45836506574c8',0,0),(6,'sergio','91a35edde26f0b98ddf1dfc16fea0d1c',0,4),(7,'almacen','4e210009a1cfbf891ee1a8f75f441e2f',0,3),(8,'lucia','9811ffff7f6008e55d2dedf14932eda1',0,6),(9,'ana','227506116a916774ad95732836c53d3d',0,6),(10,'eva','1fdcdcd2aaff04a8e5981ccb4bb0db12',0,2),(11,'juanjo','c785ac0e1b2d0706f1486c9005542841',0,6),(12,'natalia','e0ab3341c7224f37371491f6c1fb9d55',0,6);
