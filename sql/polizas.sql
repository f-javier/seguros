CREATE TABLE `polizas` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`poliza` VARCHAR(20) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`efecto` DATE NULL DEFAULT NULL,
	`vencimiento` DATE NULL DEFAULT NULL,
	`tomador` INT(10) NULL DEFAULT NULL,
	`compania` INT(10) NULL DEFAULT NULL,
	`ramo` INT(10) NULL DEFAULT NULL,
	`colaborador` INT(10) NULL DEFAULT NULL,
	`inspector_comercial` INT(10) NULL DEFAULT NULL,
	`formadepagoid` INT(10) NULL DEFAULT NULL,
	`domiciliocobro` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`observaciones` TEXT NULL COLLATE 'utf8_spanish_ci',
	`automatricula` VARCHAR(10) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`autouso` VARCHAR(15) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`automarcamodelo` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`autopropietario` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`autoconductor` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`autonifconductor` VARCHAR(15) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`autonacimconductor` VARCHAR(15) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`autocarnetconductor` VARCHAR(15) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`autocoberturas` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`diversosriesgo` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`diversoscapitales` TEXT NULL COLLATE 'utf8_spanish_ci',
	`vidaasegurado` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`vidacapitales` TEXT NULL COLLATE 'utf8_spanish_ci',
	`envigor` VARCHAR(1) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`fechaanulacion` DATE NULL DEFAULT NULL,
	`motivoanulacion` VARCHAR(1) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`fechacreacion` DATETIME NULL DEFAULT NULL,
	`usuariocreacion` VARCHAR(25) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	`fechaultimamodificacion` DATETIME NULL DEFAULT NULL,
	`usuarioultimamodificacion` VARCHAR(25) NULL DEFAULT NULL COLLATE 'utf8_spanish_ci',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


CREATE TRIGGER `polizasBI` BEFORE INSERT ON `polizas` FOR EACH ROW BEGIN
  SET NEW.fechacreacion = NOW(),
      NEW.usuariocreacion = USER();
END;

CREATE TRIGGER `polizasBU` BEFORE UPDATE ON `polizas` FOR EACH ROW BEGIN
  SET NEW.fechaultimamodificacion = NOW(),
      NEW.usuarioultimamodificacion = USER();
END;

