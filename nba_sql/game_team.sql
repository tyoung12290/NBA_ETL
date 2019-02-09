CREATE DATABASE IF NOT EXISTS `fanduel`;
USE `fanduel`;

DROP TABLE if exists `game_team`;
CREATE TABLE `game_team`(
`id` int(11) NOT NULL AUTO_INCREMENT,
`game_id` int(11) NOT NULL,
`game_number` int(3)  NOT NULL,
`team_id` int(2)  NOT NULL,
`location` char(4) NOT NULL,
`time` datetime NOT Null,
`result` char(1),
`score` int(3),
PRIMARY KEY (`id`),
FOREIGN KEY (`team_id`) REFERENCES team(`id`)
)
ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;