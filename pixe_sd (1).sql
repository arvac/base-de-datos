-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-06-2018 a las 05:21:43
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
-- Base de datos: `pixe_sd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correos`
--

CREATE TABLE `correos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `clave` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `correos`
--

INSERT INTO `correos` (`id`, `title`, `clave`) VALUES
(1, 'pixel.21noviembre.nombre@gmail.com', 'pixel.21noviembre.nombre.clave'),
(2, 'pixel.23noviembre.ivan@gmail.com', 'pixel.23noviembre.ivan.clave'),
(3, 'pixel.26noviembre.diana@gmail.com', 'pixel.26noviembre.diana.clave'),
(4, 'pixel.28noviembre.tab4@gmail.com', 'pixel.28noviembre.tab4.clave'),
(5, 'pixel.29noviembre.apple@icloud.com', 'Pixel.29noviembre.apple.clave'),
(6, 'pixel.6diciembre.g920f', 'pixel.6diciembre.g920f.clave'),
(7, 'pixel.6diciembre.jose@gmail.com', 'pixel.6diciembre.jose.clave'),
(8, ' \r\n 				\r\n\r\npixel.7diciembre.j7\r\n', 'pixel.9diciembre.j7.clave'),
(9, 'pixel.10diciembre.scl', 'pixel.10diciembre.scl.clave'),
(10, 'pixel.10diciembre.cristian', 'pixel.10diciembre.cristian.clave'),
(11, 'pixel.19diciembre.sony', 'pixel.19diciembre.sony.clave'),
(12, 'pixel.26diciembre.j7@gmail.com', 'pixel.26diciembre.j7.clave'),
(13, 'pixel.3enero.j5@gmail.com', 'pixel.4enero.j5.clave'),
(14, 'pixel.5enero.nokia@outlook.es', 'pixel5eneroA'),
(15, 'pixel.25febrero.ka@icloud.com', 'Pixel.25febrero.karina.clave'),
(16, 'pixel.15marzo.arias@icloud.com', 'Pixel.15marzo.gabriela.clave'),
(17, 'pixel.20marzo.danna@icloud.com', 'Pixel.20marzo.danna.clave'),
(18, 'pixel.22marzo.lupo@icloud.com', 'Pixel.22marzo.lupo.clave'),
(19, 'pixel.19abril.ipad@hotmail.com', 'clave.ipad.19abril.pixel'),
(20, 'pixel.29abril.jhonyalex@icloud.com', 'Pixel.29abril.jhony.clave'),
(21, 'pixel.8mayo.jheny@icloud.com', 'Arvacturion.1'),
(22, 's28magda_mary@hotmail.com', 'MAJU1986m'),
(23, 'pixel.5julio.jean@gmail.com', 'Pixel.5julio.jean.clave'),
(24, 'pixel.9agosto@icloud.com', 'Pixel.9agosto.clave'),
(25, 'pixel.4septiembre.fanny@hotmail.com', '68061050M'),
(26, 'pixel.19septiembre.egdo@icloud.com', 'Pixel.19septiembre.clave'),
(27, 'pixel.29nov.pozo@gmail.com', 'Pixel.29nov.clave'),
(28, 'pixel.19enero.i5@icloud.com', 'Pixel.clave.1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `correos`
--
ALTER TABLE `correos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `correos`
--
ALTER TABLE `correos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
