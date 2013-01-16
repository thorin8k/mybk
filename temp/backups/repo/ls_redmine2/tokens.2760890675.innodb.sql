/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `action` varchar(30) NOT NULL DEFAULT '',
  `value` varchar(40) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tokens_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `tokens` VALUES (1,3,'recovery','415413dcd6c55435ebcf183782625656c67a16d6','2011-01-10 09:37:18'),(3,1,'feeds','50d0082ad5d8696c6df719fce2224de18c77094c','2011-01-10 09:42:59'),(5,3,'feeds','ade70d64c0be05cc01c46ca46cba9c5fdfd9c904','2011-01-10 10:47:20'),(7,4,'feeds','172dfad71d9e1923a407d602eafe6c71d8b5b62e','2011-01-10 11:03:15'),(9,5,'feeds','644b5294e9f3b8b291c8ee60e280e540c94f6f9d','2011-01-10 11:24:07'),(11,6,'feeds','30772ac1b0eda7ac377ad889f81d608e17694b98','2011-01-10 12:55:36'),(13,7,'feeds','d840e5d72861dc0527ede27cf961513ff4df5392','2011-01-10 13:06:59'),(15,10,'feeds','32bc7b27dda96a18c677870d79e5cd52501cfb87','2011-01-13 12:41:20'),(17,11,'feeds','baa3144d81fefc97c1b78c7db52439675d3be036','2011-02-02 12:50:48'),(19,15,'feeds','1fb13bf435b75acc5f9968eaf5cfd0193ea0567b','2011-03-22 18:53:49'),(21,17,'feeds','4ae33dac8e6f5c4c9ab96863077e447631fab702','2011-04-06 22:47:26'),(22,7,'recovery','66cb9e1e8b278d60013fb3ce4b9c42365d0c6a01','2011-06-02 08:33:22'),(24,18,'feeds','a50b4a1a7643bd79381f1f7c41a5a136f7904a5f','2011-11-18 14:25:37'),(26,19,'feeds','bedc5ea2ec5301f8e36c2a5c513821be985709e7','2011-11-22 16:33:24'),(28,20,'feeds','b76623a8ac3dfe8f938324d8d27f79ba8230a183','2012-01-13 10:40:36'),(30,22,'feeds','fb83da9ac9a52c2382ff0d5cd27cf0d7481644b3','2012-01-30 21:10:16'),(31,18,'recovery','89aad7b03f845c4707dc64960b7fa96525650137','2012-02-21 08:42:34'),(34,24,'feeds','b7c1567accc625d65f3f516de1fdec3e8cf0cedc','2012-08-07 09:06:34'),(36,4,'recovery','721d57ff09b8c255afeee94f5276c64268a6f5d7','2012-08-14 11:10:18');
