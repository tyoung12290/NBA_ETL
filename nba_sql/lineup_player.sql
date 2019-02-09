DROP TABLE if exists `lineup_player_detail`;
CREATE TABLE `lineup_player_detail`(
`lineup_id` int(11) NOT NULL,
`player_detail_id` int(11) NOT NULL,
FOREIGN KEY (`lineup_id`) REFERENCES Lineup(`id`),
FOREIGN KEY (`player_detail_id`) REFERENCES player_detail(`id`)
)
ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;