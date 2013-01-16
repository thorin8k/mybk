/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `filters` text,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `column_names` text,
  `sort_criteria` text,
  `group_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_queries_on_project_id` (`project_id`),
  KEY `index_queries_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `queries` VALUES (1,9,'Documentación cambio de versión Portugal','--- \ntracker_id: \n  :values: \n  - \"7\"\n  :operator: \"=\"\nstatus_id: \n  :values: \n  - \"1\"\n  :operator: o\n',4,0,'--- \n- :tracker\n- :status\n- :priority\n- :subject\n- :assigned_to\n- :updated_on\n- :estimated_hours\n','--- \n- - project\n  - asc\n','project'),(2,NULL,'Quim','--- \nstart_date: \n  :values: \n  - \"\"\n  :operator: w\nstatus_id: \n  :values: \n  - \"1\"\n  :operator: o\n',10,0,'--- \n- :project\n- :tracker\n- :status\n- :priority\n- :subject\n- :assigned_to\n- :start_date\n- :due_date\n- :done_ratio\n- :estimated_hours\n','--- \n- - start_date\n  - asc\n','assigned_to'),(3,26,'Mia','--- \nstatus_id: \n  :values: \n  - \"1\"\n  :operator: o\n',7,0,'--- \n- :parent\n- :subject\n- :tracker\n- :status\n- :done_ratio\n- :assigned_to\n','--- []\n\n',''),(4,2,'Pendientes Quim','--- \nassigned_to_id: \n  :values: \n  - me\n  :operator: \"=\"\nstatus_id: \n  :values: \n  - \"1\"\n  :operator: o\n',10,0,NULL,'--- []\n\n','');
