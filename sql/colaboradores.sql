CREATE TABLE IF NOT EXISTS `colaboradores` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `codigopostal` varchar(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `poblacion` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `provincia` int(10) DEFAULT NULL,
  `telefono1` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono2` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fax` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `observaciones` text COLLATE utf8_spanish_ci,
  `fechacreacion` datetime DEFAULT NULL,
  `usuariocreacion` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fechaultimamodificacion` datetime DEFAULT NULL,
  `usuarioultimamodificacion` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TRIGGER `colaboradoresBI` BEFORE INSERT ON `colaboradores` FOR EACH ROW BEGIN
  SET NEW.fechacreacion = NOW(),
      NEW.usuariocreacion = USER();
END;

CREATE TRIGGER `colaboradoresBU` BEFORE UPDATE ON `colaboradores` FOR EACH ROW BEGIN
  SET NEW.fechaultimamodificacion = NOW(),
      NEW.usuarioultimamodificacion = USER();
END;

