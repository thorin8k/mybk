/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incomingmessage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `async` int(11) DEFAULT NULL,
  `error_message` longtext COLLATE utf8_spanish_ci,
  `in_pipes` int(11) DEFAULT NULL,
  `incoming_time` datetime DEFAULT NULL,
  `output_message_ref` bigint(20) DEFAULT NULL,
  `payload` longtext COLLATE utf8_spanish_ci,
  `process_time` datetime DEFAULT NULL,
  `retries` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
