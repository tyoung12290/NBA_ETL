CREATE DATABASE IF NOT EXISTS `fanduel`;
USE `fanduel`;

DROP TABLE if exists `game_team`;
CREATE TABLE `game_team`(
`id` int(11) NOT NULL,
`time` datetime NOT NULL,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;