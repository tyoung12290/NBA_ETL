CREATE TABLE `lineup_player_detail` (
  `lineup_optimized_id` int(11) NOT NULL,
  `player_detail_id` int(11) NOT NULL,
  KEY `lineup_optimzed_id` (`lineup_optimized_id`),
  KEY `player_detail_id` (`player_detail_id`),
  FOREIGN KEY (`lineup_optimized_id`) REFERENCES `lineup_optimized` (`id`),
  FOREIGN KEY (`player_detail_id`) REFERENCES `player_detail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
