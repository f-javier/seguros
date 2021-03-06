CREATE TABLE `companias` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`nombre` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`direccion` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`codigopostal` VARCHAR(5) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`poblacion` VARCHAR(30) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`provincia` INT(11) NULL DEFAULT NULL,
	`telefono1` VARCHAR(15) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`telefono2` VARCHAR(15) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`fax` VARCHAR(15) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`email` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`paginaweb` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`telefonoasistencia` TEXT NULL COLLATE 'utf8_spanish_ci',
	`notas` TEXT NULL COLLATE 'utf8_spanish_ci',
	`admincontacto` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`admintelefono` VARCHAR(15) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`adminfax` VARCHAR(15) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`adminemail` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`contabcontacto` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`contabtelefono` VARCHAR(15) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`contabfax` VARCHAR(15) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`contabemail` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`prodcontacto` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`prodtelefono` VARCHAR(15) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`prodfax` VARCHAR(15) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`prodemail` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`sinicontacto` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`sinitelefono` VARCHAR(15) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`sinifax` VARCHAR(15) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`siniemail` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`comercialcontacto` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`comercialtelefono` VARCHAR(15) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`comercialfax` VARCHAR(15) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`comercialemail` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`peritocontacto` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`peritotelefono` VARCHAR(15) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`peritofax` VARCHAR(15) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`peritoemail` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`fechacreacion` DATETIME NULL DEFAULT NULL,
	`usuariocreacion` VARCHAR(15) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`fechaultimamodificacion` DATETIME NULL DEFAULT NULL,
	`usuarioultimamodificacion` VARCHAR(15) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	PRIMARY KEY (`id`)
)
COLLATE='utf8_spanish_ci'
ENGINE=InnoDB;

