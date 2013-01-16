/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pm_expensestype` (
  `id` int(11) NOT NULL,
  `name` varchar(60) CHARACTER SET utf8 DEFAULT '',
  `value` double DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `pm_expensestype` VALUES (1,'Alquileres Varios',0,'Alquileres Varios'),(2,'Artículos Diversos',0,'Artículos Diversos'),(3,'Comisiones mant. cta bancaria',0,'Comisiones mant. cta bancaria'),(4,'Congresos (Gastos varios)',0,'Congresos (Gastos varios)'),(5,'Congresos (Inscripciones Individuales)',0,'Congresos (Inscripciones Individuales)'),(6,'Correos',0,'Correos'),(7,'Cursos Residentes',0,'Cursos Residentes'),(8,'Dietas',18.5,'Dietas'),(9,'Fotocopias',0,'Fotocopias'),(10,'Hoteles Nacionales',0,'Hoteles Nacionales'),(11,'Hoteles Extranjeros',0,'Hoteles Extranjeros'),(12,'Otros gastos extranjero',0,'Otros gastos extranjero'),(13,'Invitaciones con Factura Roche',0,'Invitaciones con Factura Roche'),(14,'Invitaciones',0,'Invitaciones'),(15,'Kilometraje Vehículo Flota',0,'Kilometraje Vehículo Flota'),(16,'Kilometraje Vehículo Propio',0.405,'Kilometraje Vehículo Propio'),(17,'Linea ADSL',0,'Linea ADSL'),(18,'Material Oficina (uso propio)',0,'Material Oficina (uso propio)'),(19,'Material varios aparatos',0,'Material varios aparatos'),(20,'Mensajeros',0,'Mensajeros'),(21,'Obsequios - Atenciones con terceros',0,'Obsequios - Atenciones con terceros'),(22,'Otros',0,'Otros'),(23,'Parking',0,'Parking'),(24,'Peaje',0,'Peaje'),(25,'Gasolina',0,'Gasolina'),(26,'Restaurante',0,'Restaurante'),(27,'Reuniones del personal',0,'Reuniones del personal'),(28,'Servicio Comedor',0,'Servicio Comedor'),(29,'Taxi, bus, metro, avion y tren',0,'Taxi, bus, metro, avion y tren');
