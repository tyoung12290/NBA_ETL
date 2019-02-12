DROP TABLE IF EXISTS lineup_optimized;
CREATE TABLE lineup_optimized (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salary` int(6) DEFAULT NULL,
  `proj_score` int(3) DEFAULT NULL,
  `act_score` int(3) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `players` varchar(100),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;
