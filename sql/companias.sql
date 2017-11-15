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

-- Volcando estructura para tabla seguros.companias
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla seguros.companias: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `companias` DISABLE KEYS */;
/*!40000 ALTER TABLE `companias` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
