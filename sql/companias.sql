CREATE TABLE IF NOT EXISTS `companias` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `codigopostal` varchar(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `poblacion` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `provincia` int(11) DEFAULT NULL,
  `telefono1` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono2` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fax` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `paginaweb` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefonoasistencia` text COLLATE utf8_spanish_ci,
  `notas` text COLLATE utf8_spanish_ci,
  `admincontacto` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `admintelefono` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `adminfax` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `adminemail` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contabcontacto` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contabtelefono` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contabfax` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contabemail` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `prodcontacto` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `prodtelefono` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `prodfax` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `prodemail` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `sinicontacto` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `sinitelefono` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `sinifax` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `siniemail` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `comercialcontacto` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `comercialtelefono` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `comercialfax` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `comercialemail` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `peritocontacto` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `peritotelefono` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `peritofax` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `peritoemail` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fechacreacion` datetime DEFAULT NULL,
  `usuariocreacion` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fechaultimamodificacion` datetime DEFAULT NULL,
  `usuarioultimamodificacion` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TRIGGER `companiasBI` BEFORE INSERT ON `companias` FOR EACH ROW BEGIN
  SET NEW.fechacreacion = NOW(),
      NEW.usuariocreacion = USER();
END;

CREATE TRIGGER `companiasBU` BEFORE UPDATE ON `companias` FOR EACH ROW BEGIN
  SET NEW.fechaultimamodificacion = NOW(),
      NEW.usuarioultimamodificacion = USER();
END;

