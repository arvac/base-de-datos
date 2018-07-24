-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-06-2018 a las 05:21:21
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pixel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes`
--

CREATE TABLE `ordenes` (
  `ordenesid` int(11) NOT NULL,
  `nombre` varchar(15) DEFAULT NULL,
  `apellido` varchar(15) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  `marca` varchar(15) DEFAULT NULL,
  `color` varchar(15) DEFAULT NULL,
  `imei` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ordenes`
--

INSERT INTO `ordenes` (`ordenesid`, `nombre`, `apellido`, `tipo`, `marca`, `color`, `imei`) VALUES
(22, '0', 'vaca', '0', '', 'azul', 0),
(23, '0', 'vaca', '0', 'chino', 'azul', 342343),
(24, '0', 'vaca', '0', 'xaaa', 'azul', 3223),
(25, '0', 'vaca', '0', 'soooooo', 'azul', 45454),
(26, '0', 'vaca', '0', 'sdsd', 'azul', 333),
(27, '0', 'vaca', '0', 'fdsd', 'azul', 343),
(28, '0', 'vaca', '0', 'fdsd', 'azul', 343),
(29, 'arvac', 'vaca', 'fa', 'asdsas', 'azul', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `userid` int(11) NOT NULL,
  `nombre` varchar(15) DEFAULT NULL,
  `apellido` varchar(15) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `cedula` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`userid`, `nombre`, `apellido`, `celular`, `cedula`) VALUES
(1, 'arvac', 'vaca', '3232', 100300301),
(2, 'arvac', 'vaca', '3232', 100300301),
(3, 'arvac', 'vaca', '3232', 100300301),
(4, 'arvac', 'vaca', '3232', 100300301),
(5, 'arvac', 'vaca', '3232', 100300301),
(6, 'arvac', 'vaca', '3232', 100300301),
(7, 'arvac', 'vaca', '3232', 100300301),
(8, 'arvac', 'vaca', '3232', 100300301),
(9, 'arvac', 'vaca', '3232', 100300301),
(10, 'arvac', 'vaca', '3232', 100300301),
(11, 'arvac', 'vaca', '3232', 100300301),
(12, 'arvac', 'vaca', '3232', 100300301);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  ADD PRIMARY KEY (`ordenesid`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  MODIFY `ordenesid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
