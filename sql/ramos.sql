CREATE TABLE IF NOT EXISTS `ramos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(35) COLLATE utf8_spanish_ci DEFAULT NULL,
  `companiaid` int(10) DEFAULT NULL,
  `comision` decimal(5,2) DEFAULT NULL,
  `comisionagente` decimal(5,2) DEFAULT NULL,
  `ramodecid` int(10) DEFAULT NULL,
  `fechacreacion` datetime DEFAULT NULL,
  `usuariocreacion` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fechaultimamodificacion` datetime DEFAULT NULL,
  `usuarioultimamodificacion` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TRIGGER `ramosBI` BEFORE INSERT ON `ramos` FOR EACH ROW BEGIN
  SET NEW.fechacreacion = NOW(),
      NEW.usuariocreacion = USER();
END;

CREATE TRIGGER `ramosBU` BEFORE UPDATE ON `ramos` FOR EACH ROW BEGIN
  SET NEW.fechaultimamodificacion = NOW(),
      NEW.usuarioultimamodificacion = USER();
END;

