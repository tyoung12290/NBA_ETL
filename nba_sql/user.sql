CREATE TABLE `user`(
`id` int(11) NOT NULL AUTO_INCREMENT,
`username` varchar(20) NOT NULL,
`password` varchar(20) NOT NULL,
`first_name` varchar(20) NOT NULL,
`last_name` varchar(20) NOT NULL,
`email` varchar(20) NOT NULL,
`date` datetime not null default current_timestamp,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;