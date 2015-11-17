-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2015 a las 01:42:05
-- Versión del servidor: 5.6.15-log
-- Versión de PHP: 5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `sigamus`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
  `id_EM` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_EM` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `direccion_EM` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `numero1_EM` int(20) NOT NULL,
  `numero2_EM` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `correo_EM` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `tutor_EM` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_EM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE IF NOT EXISTS `estudiante` (
  `cedulaE` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `nombreE` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidoE` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `escuelaE` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `seccionE` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `direccionE` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `correoE` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `numero1E` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `numero2E` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`cedulaE`),
  UNIQUE KEY `cedula` (`cedulaE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`cedulaE`, `nombreE`, `apellidoE`, `escuelaE`, `seccionE`, `direccionE`, `correoE`, `numero1E`, `numero2E`) VALUES
('21144853', 'juan', 'gfsdg', 'ghehre', 'ther', 'herh', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE IF NOT EXISTS `profesores` (
  `cedulaP` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `nombreP` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidoP` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `especialidadP` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `escuelaP` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `dirrecionP` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `correoP` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `numero1P` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`cedulaP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teg`
--

CREATE TABLE IF NOT EXISTS `teg` (
  `idT` int(250) NOT NULL AUTO_INCREMENT COMMENT 'ID TEG',
  `tituloT` varchar(100) NOT NULL COMMENT 'titulo de la investigacion',
  `lineaT` varchar(20) NOT NULL COMMENT 'linea de incestigacion',
  `descripcionT` varchar(250) NOT NULL COMMENT 'Breve descripcion del trabajo',
  `idestudianteT` varchar(250) NOT NULL,
  `idtutorT` varchar(250) NOT NULL,
  `idmotodologoT` varchar(250) NOT NULL,
  `idempresaT` varchar(250) NOT NULL,
  PRIMARY KEY (`idT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
