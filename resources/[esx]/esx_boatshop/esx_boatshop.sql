

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_boatdealer','Marina',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_boatdealer','Marina',1)
;

INSERT INTO `jobs` (name, label) VALUES
	('boatdealer','Marina')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('boatdealer',0,'recruit','Recrue',10,'{}','{}'),
	('boatdealer',1,'novice','Novice',25,'{}','{}'),
	('boatdealer',2,'experienced','Experimente',40,'{}','{}'),
	('boatdealer',3,'boss','Patron',0,'{}','{}')
;

CREATE TABLE `boatdealer_boats` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`vehicle` varchar(255) NOT NULL,
	`price` int(11) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `owned_boats` (
	`owner` varchar(30) NOT NULL,
	`plate` varchar(12) NOT NULL,
	`vehicle` longtext,

	PRIMARY KEY (`plate`)
);

CREATE TABLE `rented_boats` (
	`vehicle` varchar(60) NOT NULL,
	`plate` varchar(12) NOT NULL,
	`player_name` varchar(255) NOT NULL,
	`base_price` int(11) NOT NULL,
	`rent_price` int(11) NOT NULL,
	`owner` varchar(30) NOT NULL,

	PRIMARY KEY (`plate`)
);

CREATE TABLE `boat_categories` (
	`name` varchar(60) NOT NULL,
	`label` varchar(60) NOT NULL,

	PRIMARY KEY (`name`)
);

INSERT INTO `boat_categories` (name, label) VALUES
	('boat','Boats')
;

CREATE TABLE `boats` (
	`name` varchar(60) NOT NULL,
	`model` varchar(60) NOT NULL,
	`price` int(11) NOT NULL,
	`category` varchar(60) DEFAULT NULL,
	PRIMARY KEY (`model`)
);

INSERT INTO `boats` (name, model, price, category) VALUES
	('Seashark','seashark',6500,'boat'),
	('Seashark2','seashark2',6500,'boat'),
	('Yacht Seashark','seashark3',7000,'boat'),
	('Suntrap','suntrap',15000,'boat'),
	('Dinghy','dinghy',8000,'boat'),
	('Dinghy2 ','dinghy2',8500,'boat'),
	('Yacht Dinghy','dinghy4',9000,'boat'),
	('Tropic','tropic',14000,'boat'),
	('Yacht Tropic','tropic2',15000,'boat'),
	('Squalo','squalo',35000,'boat'),
	('Yacht Toro','toro2',80000,'boat'),
	('Toro','toro',85000,'boat'),
	('Jetmax','jetmax',30000,'boat'),
	('Voilier Marquis','marquis',250000,'boat')
;
