-- phpMyAdmin SQL Dump
<<<<<<< HEAD
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-12-2015 a las 08:44:34
-- Versión del servidor: 10.1.8-MariaDB
-- Versión de PHP: 5.6.14
=======
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 04-12-2015 a las 09:11:35
-- Versión del servidor: 5.1.73
-- Versión de PHP: 5.4.27
>>>>>>> 5c093029b6ae790d98f27d321812d637d96a6d04

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
<<<<<<< HEAD
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `BaseFactura`
=======
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `u0016023_facturadb`
>>>>>>> 5c093029b6ae790d98f27d321812d637d96a6d04
--

-- --------------------------------------------------------

--
<<<<<<< HEAD
-- Estructura de tabla para la tabla `concepto`
--

CREATE TABLE `concepto` (
  `idConcepto` int(11) NOT NULL,
  `cuentaPredial` varchar(50) NOT NULL,
  `numero` varchar(45) NOT NULL,
  `complementoConcepto` varchar(45) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `unidad` varchar(45) NOT NULL,
  `noIdentificacion` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `Conceptos_idConceptos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
=======
-- Estructura de tabla para la tabla `Comprobante`
--

CREATE TABLE IF NOT EXISTS `Comprobante` (
  `idComprobate` int(11) NOT NULL AUTO_INCREMENT,
  `Version` varchar(50) DEFAULT NULL,
  `Serie` varchar(45) DEFAULT NULL,
  `Folio` varchar(45) DEFAULT NULL,
  `Fecha` datetime NOT NULL,
  `sello` varchar(45) NOT NULL,
  `FormaDePago` varchar(45) DEFAULT NULL,
  `noCertificado` int(45) NOT NULL,
  `certificado` varchar(45) NOT NULL,
  `condicionPago` varchar(45) NOT NULL,
  `motivoDescuento` text,
  `tipoCambio` varchar(45) DEFAULT NULL,
  `moneda` varchar(45) DEFAULT NULL,
  `metodoDePago` varchar(45) NOT NULL,
  `lugarExpedicion` varchar(45) NOT NULL,
  `numCtaPago` int(15) NOT NULL,
  `folioFiscalOriginal` varchar(45) NOT NULL,
  `serieFolioFiscalOrig` varchar(50) NOT NULL,
  `subTotal` int(15) NOT NULL,
  `descuento` int(50) DEFAULT NULL,
  `total` int(15) NOT NULL,
  `tipoComprobante` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idComprobate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
>>>>>>> 5c093029b6ae790d98f27d321812d637d96a6d04

-- --------------------------------------------------------

--
<<<<<<< HEAD
-- Estructura de tabla para la tabla `emisor`
--

CREATE TABLE `emisor` (
  `regimen_Fiscal` varchar(50) NOT NULL,
  `regimen` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `Comprobante_Serie` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
=======
-- Estructura de tabla para la tabla `Conceptos`
--

CREATE TABLE IF NOT EXISTS `Conceptos` (
  `idConceptos` int(11) NOT NULL AUTO_INCREMENT,
  `importe` int(15) NOT NULL,
  `valorUnitario` int(15) NOT NULL,
  `Comprobante_Serie` varchar(45) NOT NULL,
  PRIMARY KEY (`idConceptos`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
>>>>>>> 5c093029b6ae790d98f27d321812d637d96a6d04

-- --------------------------------------------------------

--
<<<<<<< HEAD
-- Estructura de tabla para la tabla `t_informacionaduanera`
--

CREATE TABLE `t_informacionaduanera` (
  `t_InformacionAduaneracol` varchar(45) NOT NULL,
  `numero` varchar(50) NOT NULL,
  `fecha` datetime NOT NULL,
  `aduana` varchar(45) NOT NULL,
  `idInformacionAduanera` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
=======
-- Estructura de tabla para la tabla `Impuestos`
--

CREATE TABLE IF NOT EXISTS `Impuestos` (
  `idImpuestos` int(11) NOT NULL AUTO_INCREMENT,
  `retenciones` varchar(50) DEFAULT NULL,
  `ist` int(10) DEFAULT NULL,
  `iva` int(10) DEFAULT NULL,
  `traslados` varchar(45) DEFAULT NULL,
  `ieps` int(10) DEFAULT NULL,
  PRIMARY KEY (`idImpuestos`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
>>>>>>> 5c093029b6ae790d98f27d321812d637d96a6d04

-- --------------------------------------------------------

--
<<<<<<< HEAD
-- Estructura de tabla para la tabla `t_rfc`
--

CREATE TABLE `t_rfc` (
  `RFC` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
=======
-- Estructura de tabla para la tabla `Receptor`
--

CREATE TABLE IF NOT EXISTS `Receptor` (
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`nombre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
>>>>>>> 5c093029b6ae790d98f27d321812d637d96a6d04

-- --------------------------------------------------------

--
<<<<<<< HEAD
-- Estructura de tabla para la tabla `t_ubicacion`
--

CREATE TABLE `t_ubicacion` (
  `id_ubicacion` int(11) NOT NULL,
  `calle` varchar(50) NOT NULL,
  `noExterior` varchar(45) NOT NULL,
  `noInterior` varchar(45) NOT NULL,
  `colonia` varchar(45) NOT NULL,
  `localidad` varchar(45) NOT NULL,
  `referencia` varchar(45) NOT NULL,
  `municipio` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `pais` varchar(45) NOT NULL,
  `codigopostal` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
=======
-- Estructura de tabla para la tabla `t_UbicacionFiscal`
--

CREATE TABLE IF NOT EXISTS `t_UbicacionFiscal` (
  `idUbicacionFiscal` int(11) NOT NULL AUTO_INCREMENT,
  `calle` varchar(50) NOT NULL,
  `noExterior` varchar(45) DEFAULT NULL,
  `noInterior` varchar(45) DEFAULT NULL,
  `colonia` varchar(45) NOT NULL,
  `localidad` varchar(45) NOT NULL,
  `referencia` text NOT NULL,
  `municipio` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `pais` varchar(45) NOT NULL,
  `codigoPostal` int(5) NOT NULL,
  PRIMARY KEY (`idUbicacionFiscal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
>>>>>>> 5c093029b6ae790d98f27d321812d637d96a6d04

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
