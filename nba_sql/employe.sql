DROP TABLE IF EXISTS lineup;
CREATE TABLE `lineup`(
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(11) NOT NULL,
`salary` int(6), 
`score` int(3),
`date` datetime not null default current_timestamp,
PRIMARY KEY (`id`),
FOREIGN KEY (`user_id`) REFERENCES User(`id`)
)
ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;