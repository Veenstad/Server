INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_biker','LostMC',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_biker','LostMC',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_biker', 'LostMC', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('biker', 'LostMC', 1);

--
-- Déchargement des données de la table `jobs_grades`
--

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('biker', 0, 'soldato', 'Prospect', 1500, '{}', '{}'),
('biker', 1, 'capo', 'Road Captain', 1800, '{}', '{}'),
('biker', 2, 'consigliere', 'Vice President', 2100, '{}', '{}'),
('biker', 3, 'boss', 'President', 2700, '{}', '{}');

CREATE TABLE `fine_types_biker` (
  
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  
  PRIMARY KEY (`id`)
);

INSERT INTO `fine_types_biker` (label, amount, category) VALUES 
	('Raket',3000,0),
	('Raket',5000,0),
	('Raket',10000,1),
	('Raket',20000,1),
	('Raket',50000,2),
	('Raket',150000,3),
	('Raket',350000,3)
;