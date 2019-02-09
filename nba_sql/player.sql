CREATE DATABASE IF NOT EXISTS `fanduel`;
USE `fanduel`;

DROP TABLE IF EXISTS `player`;

CREATE TABLE `player` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
    `first_name` varchar(45) DEFAULT NULL,
    `last_name` varchar(45) DEFAULT NULL,
    `pos` varchar(2) DEFAULT NULL,
    `team_id` int(11) NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`team_id`) REFERENCES team(`id`)
    )ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;