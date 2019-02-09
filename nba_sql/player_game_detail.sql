DROP TABLE player_detail_game;
CREATE TABLE `player_detail_game` (
  `player_detail_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  KEY `player_detail_id` (`player_detail_id`),
  KEY `game_id` (`game_id`),
  FOREIGN KEY (`player_detail_id`) REFERENCES `player_detail` (`id`),
  FOREIGN KEY (`game_id`) REFERENCES `game_team` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
