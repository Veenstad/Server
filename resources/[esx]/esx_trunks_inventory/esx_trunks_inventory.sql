USE `essentialmode`;

	
CREATE TABLE `vehicle_trunks` (
  `plate` varchar(25) NOT NULL,
  `content` varchar(385) NOT NULL,
  `junk` bit DEFAULT 1,
  PRIMARY KEY (`plate`)
);