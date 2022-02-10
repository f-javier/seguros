CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fechaalta` date DEFAULT NULL,
  `fechabaja` date DEFAULT NULL,
  `estado` varchar(1) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT '(A)ctivo, (B)aja',
  `tipodocumento` varchar(1) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT '(1)NIF, (2)CIF, (3)NIE, (4)Pasaporte, (5)Otro',
  `identificador` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fechadevalidez` date DEFAULT NULL,
  `nombre` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellido1` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellido2` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `alias` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `codigopostal` varchar(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `poblacion` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `provincia` int(11) DEFAULT NULL,
  `telefono1` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono2` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fax` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `mastelefonos` blob,
  `fechanacimiento` date DEFAULT NULL,
  `fechacarneta` date DEFAULT NULL,
  `validezcarneta` date DEFAULT NULL,
  `fechacarneta1` date DEFAULT NULL,
  `validezcarneta1` date DEFAULT NULL,
  `fechacarneta2` date DEFAULT NULL,
  `validezcarneta2` date DEFAULT NULL,
  `fechacarnetb` date DEFAULT NULL,
  `validezcarnetb` date DEFAULT NULL,
  `fechacarnetc` date DEFAULT NULL,
  `validezcarnetc` date DEFAULT NULL,
  `fechacarnetd` date DEFAULT NULL,
  `validezcarnetd` date DEFAULT NULL,
  `cuentabancaria` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `web` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `formacontacto` varchar(1) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT '(1)Email, (2)Carta, (3)SMS',
  `profesion` int(11) DEFAULT NULL,
  `detalle` blob,
  `observaciones` blob,
  `incidencias` blob,
  `comercial` blob,
  `enviarpublicidad` varchar(1) COLLATE utf8_spanish_ci DEFAULT NULL,
  `impresolopd` varchar(1) COLLATE utf8_spanish_ci DEFAULT NULL,
  `firmadolopd` varchar(1) COLLATE utf8_spanish_ci DEFAULT NULL,
  `sexo` varchar(1) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT '(H)ombre, (M)ujer',
  `estadocivil` varchar(1) COLLATE utf8_spanish_ci DEFAULT NULL,
  `hijos` int(11) DEFAULT NULL,
  `situacionlaboral` varchar(1) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rentaanual` decimal(12,2) DEFAULT NULL,
  `capacidadahorro` decimal(12,2) DEFAULT NULL,
  `colaborador` int(11) DEFAULT NULL,
  `fechacreacion` datetime DEFAULT NULL,
  `usuariocreacion` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fechaultimamodificacion` datetime DEFAULT NULL,
  `usuarioultimamodificacion` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TRIGGER `clientesBI` BEFORE INSERT ON `clientes` FOR EACH ROW BEGIN
  SET NEW.fechaalta = SYSDATE(),
      NEW.fechacreacion = NOW(),
      NEW.usuariocreacion = USER();
END;

CREATE TRIGGER `clientesBU` BEFORE UPDATE ON `clientes` FOR EACH ROW BEGIN
  SET NEW.fechaultimamodificacion = NOW(),
      NEW.usuarioultimamodificacion = USER();
END;

