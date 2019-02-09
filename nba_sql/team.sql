CREATE DATABASE IF NOT EXISTS `fanduel`;
USE `fanduel`;

DROP TABLE if exists `team`;
CREATE TABLE `team`(
`id` int(11) NOT NULL AUTO_INCREMENT,
`abbr` varchar(3) NOT NULL,
`city` varchar(30) NOT NULL,
`name` varchar(30) NOT NULL,
`sport` char(3) NOT NULL,
`conference` char(10) NOT NULL,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;