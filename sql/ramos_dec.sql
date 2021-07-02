CREATE TABLE `ramos_dec` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`nombre` VARCHAR(30) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`tipo_dec` INT(10) NULL DEFAULT NULL,
	PRIMARY KEY (`id`)
)
COLLATE='utf8_spanish_ci'
ENGINE=InnoDB;

