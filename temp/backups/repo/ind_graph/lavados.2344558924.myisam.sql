/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lavados` (
  `id` int(2) NOT NULL DEFAULT '0',
  `composicion` varchar(72) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `lavados` VALUES (92,'80%LANA 20% POLIAMIDA'),(84,'100 % ACRILICO'),(96,'80%Acrilico 20% Poliester'),(94,'80% Lana 20% Poliamida'),(0,'55%SEDA 45%CACHEMIRA'),(91,'100% Algodón'),(90,'100% LANA'),(89,'100% CASHMERE'),(81,'80%LANA 20% POLIAMIDA'),(78,'70%ACRILICO 20%LANA 6%NYLON 4%LUREX'),(79,'80%ACRILICO 20%LANA'),(80,'57%Acrilico 19%Nylon 9%Lana 9%Mohair 6%Poliester'),(77,''),(86,'100 % ACRILICO'),(76,'100% LANA'),(98,'75%Acrilico 20%Lana 5%Alpaca'),(75,'62%ACRILICO 25%LANA 8%NYLON 5%MOHAIR'),(74,'60%ACRILICO 20%LANA 20%ALPACA'),(95,'100% POLIURETANO'),(73,'50%POLIURETANO 50%POLICLORURO DE VINILO'),(32,'50%ALGODON 25%VISCOSA 20%NYLON 5%ANGORA'),(72,'100 % POLIESTER'),(93,'80%VISCOSA 20%NYLON'),(83,'100% Algodón'),(99,'50%ACRILICO 50%ALGODON'),(85,'57% POLIESTER 43% POLIURETANO'),(82,'50%Algodon  50%Acrílico'),(69,''),(68,'40%Poliester 32%Arilico 14%Alpaca 14%Lana'),(70,'100% Algodón'),(67,'45%Acrilico 29%Poliester 20%Lana 6%Poliamida');
