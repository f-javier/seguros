CREATE TABLE `ramos` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`nombre` VARCHAR(35) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`companiaid` INT(10) NULL DEFAULT NULL,
	`comision` DECIMAL(5,2) NULL DEFAULT NULL,
	`comisionagente` DECIMAL(5,2) NULL DEFAULT NULL,
	`ramodecid` INT(10) NULL DEFAULT NULL,
	`fechacreacion` DATETIME NULL DEFAULT NULL,
	`usuariocreacion` VARCHAR(15) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`fechaultimamodificacion` DATETIME NULL DEFAULT NULL,
	`usuarioultimamodificacion` VARCHAR(15) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	PRIMARY KEY (`id`)
)
COLLATE='utf8_spanish_ci'
ENGINE=InnoDB;

