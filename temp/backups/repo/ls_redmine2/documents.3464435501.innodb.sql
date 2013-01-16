/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(60) NOT NULL DEFAULT '',
  `description` text,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_project_id` (`project_id`),
  KEY `index_documents_on_category_id` (`category_id`),
  KEY `index_documents_on_created_on` (`created_on`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `documents` VALUES (1,113,2,'Documento de instalación y descripción de entorno','','2011-02-15 11:45:40'),(2,113,2,'Excel estimación crecimiento bdd Oracle','','2011-02-15 11:46:04'),(3,113,2,'Ejemplo mensajería integración Dauro','','2011-02-15 11:46:56'),(4,113,2,'Ejemplo petición Diraya para acceso directo a TAONec','','2011-02-15 11:50:06'),(5,116,1,'Habilitar nuevas distribuciones en TAONet','','2011-02-22 17:41:20'),(6,116,1,'habilitar dosificacion por pastillas en TAONet','','2011-02-22 17:41:45'),(7,7,1,'integraciones en entorno de coorporativo','','2011-02-22 17:43:44'),(8,7,1,'presentacion CAU taonet','presentación al cau para formarlos en TAONet','2011-02-22 17:44:29'),(9,10,2,'documento de despliegue','','2011-03-31 10:59:31'),(10,76,1,'Configuracion ','Documento que describe como esta configurada la instalacion','2011-03-31 11:33:18'),(11,112,1,'despliegue sobre weblogic','con el pase a weblogic desde tomcat 5 en solaris se les envio esta doc explicandolo','2011-12-01 12:17:39'),(12,118,1,'faq proxylab','','2011-12-16 12:22:53'),(13,118,1,'manual accucheck informII','','2011-12-16 12:24:59'),(14,210,1,'estandar proyectos sergas','doc sergas proyectos ','2012-04-23 21:03:05'),(15,210,1,'gestion pass sergas','','2012-04-25 18:15:46'),(16,216,2,'APMadrid. Interfaz HL7 v:1.27','Definición del protocolo de comunicaciones con el sistema APMadrid versión 1.27 para la integración mediante HCA','2012-06-19 19:30:53'),(18,213,1,'mappings import hytwin','++','2012-07-06 13:16:05');
