-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.5.5-10.0.4-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             8.0.0.4396
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura para tabla seguros.ramos_dec
CREATE TABLE IF NOT EXISTS `ramos_dec` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipo_dec` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla seguros.ramos_dec: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ramos_dec` DISABLE KEYS */;
INSERT INTO `ramos_dec` (`id`, `nombre`, `tipo_dec`) VALUES
	(1, 'Automóviles', 1),
	(2, 'Multirriesgo Hogar', 1),
	(3, 'Vida', 2);
/*!40000 ALTER TABLE `ramos_dec` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

