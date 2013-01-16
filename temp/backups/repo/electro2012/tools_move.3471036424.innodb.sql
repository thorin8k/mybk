/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tools_move` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tools_id` int(10) unsigned NOT NULL,
  `empleado_id` int(11) NOT NULL,
  `almacen_ori` int(11) NOT NULL,
  `almacen_des` int(11) NOT NULL,
  `fecha` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  `observa` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tools_move_tools1` (`tools_id`),
  KEY `fk_tools_move_empleado1` (`empleado_id`),
  KEY `fk_tools_move_almacen1` (`almacen_ori`),
  KEY `fk_tools_move_almacen2` (`almacen_des`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `tools_move` VALUES (1,572,4247,1,2,'07-09-2010 12:48:03',1,'G'),(2,25,4688,1,2,'08-09-2010 12:19:00',1,'rr'),(3,572,4247,1,2,'09-09-2010 23:24:53',1,'observaciones a la entrega de herramientas'),(4,572,4247,2,1,'09-09-2010 23:26:05',1,'OBSERVACIONES EN LA DEVOLUCION DE HERRAMIENTA'),(5,572,4247,1,2,'09-09-2010 23:29:48',1,'jj'),(6,572,4249,2,1,'09-09-2010 23:32:50',1,'Observaciones en la devolución especial'),(7,572,4247,1,2,'09-09-2010 23:35:36',1,''),(8,231,4247,1,2,'09-09-2010 23:36:28',1,'jj');
