CREATE TABLE IF NOT EXISTS `formasdepago` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fechacreacion` datetime DEFAULT NULL,
  `usuariocreacion` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fechaultimamodificacion` datetime DEFAULT NULL,
  `usuarioultimamodificacion` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TRIGGER `formasdepagoBI` BEFORE INSERT ON `formasdepago` FOR EACH ROW BEGIN
  SET NEW.fechacreacion = NOW(),
      NEW.usuariocreacion = USER();
END;

CREATE TRIGGER `formasdepagoBU` BEFORE UPDATE ON `formasdepago` FOR EACH ROW BEGIN
  SET NEW.fechaultimamodificacion = NOW(),
      NEW.usuarioultimamodificacion = USER();
END;

