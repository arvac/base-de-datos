-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-06-2018 a las 05:20:42
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
-- Base de datos: `brizna`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id_administrador` int(11) NOT NULL,
  `nombres` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `clave` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id_administrador`, `nombres`, `apellidos`, `usuario`, `clave`) VALUES
(1, 'Ramiro ', 'Torres', 'administrador', '12345'),
(2, 'Cris ', 'Van', 'user', '12345');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignar`
--

CREATE TABLE `asignar` (
  `id_asignar` int(11) NOT NULL,
  `cuadrilla_id_cuadrilla` int(11) DEFAULT NULL,
  `clientes_id_clientes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `asignar`
--

INSERT INTO `asignar` (`id_asignar`, `cuadrilla_id_cuadrilla`, `clientes_id_clientes`) VALUES
(1, 3, 1),
(2, 3, 2),
(3, 3, 3),
(4, 3, 4),
(5, 3, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 1, 9),
(10, 1, 10),
(11, 2, 18),
(12, 2, 19),
(13, 2, 20),
(14, 3, 18),
(15, 3, 19),
(16, 3, 20),
(17, 1, 11),
(18, 3, 21),
(19, 1, 15),
(20, 1, 12),
(21, 1, 13),
(22, 2, 12),
(23, 2, 13),
(24, 2, 16),
(25, 2, 16),
(26, 10, 14),
(27, 10, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_clientes` int(11) NOT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `nombres` varchar(45) DEFAULT NULL,
  `cedula` int(11) DEFAULT NULL,
  `provincia` varchar(45) DEFAULT NULL,
  `canton` varchar(45) DEFAULT NULL,
  `sector` varchar(45) DEFAULT NULL,
  `ruta` varchar(45) DEFAULT NULL,
  `secuencia` varchar(45) DEFAULT NULL,
  `zona` varchar(45) DEFAULT NULL,
  `medidor` int(11) DEFAULT NULL,
  `estado_id_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_clientes`, `codigo`, `nombres`, `cedula`, `provincia`, `canton`, `sector`, `ruta`, `secuencia`, `zona`, `medidor`, `estado_id_estado`) VALUES
(1, '224565', 'ORDONEZ ZAMBRANO RODYS BOLIVAR', 1304313420, 'FLAVIO ALFARO', 'santo domingo', 'puerto limon', '624332', '3', '1701', 1001153688, 1),
(2, '224562', 'ORDOÃ‘EZ DANIEL FLORENCIO', 1300539713, 'FLAVIO ALFARO', 'santo domingo', 'puerto limon', '623988', '3', '1800', 236671, 1),
(3, '224448', 'ROMERO VERA ARTURO', 2147483647, 'FLAVIO ALFARO', 'santo domingo', 'puerto limon', '607066', '3', '4090', 50376969, 1),
(4, '210864', 'MERA BRAVO ISIDRO NORBERTO', 1303828923, 'FLAVIO ALFARO', 'santo domingo', 'puerto limon', '599888', '3', '8600', 1000018258, 1),
(5, '224262', 'VELIZ ANGEL VIRGILIO', 1303164766, 'FLAVIO ALFARO', 'santo domingo', 'puerto limon', '635242', '3', '13600', 50270588, 1),
(6, '210902', 'DIRECCION DISTRITAL 13DO7 CHONE FLAVIO ALFARO', 2147483647, 'FLAVIO ALFARO', 'santo domingo', 'puerto limon', '633728', '3', '17900', 50015894, 1),
(7, '210738', 'BRAVO VERA CARMEN AYDE', 1306536994, 'FLAVIO ALFARO', 'santo domingo', 'puerto limon', '632220', '33', '12500', 284691, 1),
(8, '211694', 'SATIZABAL ZAMBRANO EXITO LUPERCIO', 1307824043, 'FLAVIO ALFARO', 'santo domingo', 'puerto limon', '633826', '33', '17000', 193555, 1),
(9, '231443', 'PERALTA PANEZO ANGEL HUMBERTO', 1305545202, 'FLAVIO ALFARO', 'santo domingo', 'puerto limon', '601989', '33', '20300', 234856, 1),
(10, '217617', 'VELEZ DELGADO CRISTIAN FABRICIO', 1313891721, 'FLAVIO ALFARO', 'santo domingo', 'puerto limon', '606463', '41', '1580', 332416, 1),
(11, '242507', 'AVEIGA ELIAS ENRIQUE', 1306071166, 'FLAVIO ALFARO', 'santo domingo', 'puerto limon', '606648', '41', '1810', 9275834, 1),
(12, '242285', 'DIRECCION DISTRITAL 13DO7 CHONE FLAVIO ALFARO', 2147483647, 'FLAVIO ALFARO', 'santo domingo', 'puerto limon', '606819', '41', '1820', 1001216936, 1),
(13, '1214311', 'ZAMBRANO BAZURTO MILTON MANUEL', 1308131463, 'FLAVIO ALFARO', 'santo domingo', 'puerto limon', '611014', '41', '1830', 254912, 1),
(14, '1214352', 'MAZAMBA CEDEÃ‘O JOSE ENEDINO', 1312347436, 'FLAVIO ALFARO', 'santo domingo', 'puerto limon', '611040', '41', '2000', 1011029494, 1),
(15, '1214337', 'CHILA DELGADO WILKER FRANKLIN', 1306202662, 'FLAVIO ALFARO', 'santo domingo', 'puerto limon', '611169', '41', '2700', 12238032, 1),
(16, '1214345', 'CHILA MASAMBA PAQUITO ARBEY', 1312477506, 'FLAVIO ALFARO', 'santo domingo', 'puerto limon', '611165', '41', '3000', 1506719974, 1),
(17, '1224856', 'TRIVIÃ‘O FERRIN GREGORIO DAVID', 1304810987, 'FLAVIO ALFARO', 'santo domingo', 'puerto limon', '611137', '41', '3700', 247123, 1),
(18, '260076', 'VERA FERRIN BARTOLO AFRODITO', 1305225789, 'FLAVIO ALFARO', 'santo domingo', 'puerto limon', '612586', '42', '400', 247128, 1),
(19, '1118454', 'OLMEDO LOPEZ JOSE RICARTE', 1300530191, 'FLAVIO ALFARO', 'santo domingo', 'puerto limon', '612716', '42', '1000', 0, 1),
(20, '217857', 'CEDEÃ‘O CHICA OSCAR GALO', 1300827548, 'FLAVIO ALFARO', 'santo domingo', 'puerto limon', '613519', '42', '2200', 158230, 1),
(21, '213350', 'MEDRANDA LUQUEZ ELIGIO MIGUEL', 1313321315, 'FLAVIO ALFARO', 'santo domingo', 'puerto limon', '627997', '42', '2400', 50207274, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuadrilla`
--

CREATE TABLE `cuadrilla` (
  `id_cuadrilla` int(11) NOT NULL,
  `nombres` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `email` varchar(244) NOT NULL,
  `password` varchar(239) NOT NULL,
  `administrador_id_administrador` int(11) DEFAULT NULL,
  `estado_id_estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuadrilla`
--

INSERT INTO `cuadrilla` (`id_cuadrilla`, `nombres`, `direccion`, `email`, `password`, `administrador_id_administrador`, `estado_id_estado`) VALUES
(1, 'Jorge Vaca', 'km 21 ', '', '', 1, 1),
(2, 'Eddy Ramos', ' santo domingo', '', '', 1, 1),
(3, 'Ahn Avatar', 'India', '', '', 1, 1),
(4, 'pa', 'pa', 'pa', 'd41d8cd98f00b204e980099', 1, 1),
(5, 'pa', 'pa', 'pahhhh', 'd41d8cd98f00b204e980099', 1, 1),
(6, 'ro', 'ro', 'rou', 'd41d8cd98f00b204e980099', 1, 1),
(7, 'qqqqqq', 'qqqq', 'qq', '099b3b060154898840f0ebd', 1, 1),
(10, 'z', 'z', 'z', 'fbade9e36a3f36d3d676c1b808451dd7', 1, 1),
(11, 'fg', 'fg', 'fg', '3d4044d65abdda407a92991f1300ec97', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id_estado` int(11) NOT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id_estado`, `estado`) VALUES
(1, 0),
(2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `id_c` varchar(255) NOT NULL,
  `id_a` varchar(255) NOT NULL,
  `corte` varchar(255) NOT NULL,
  `lectura` varchar(255) NOT NULL,
  `fotos1` varchar(255) NOT NULL,
  `fotos2` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `register`
--

INSERT INTO `register` (`id`, `id_c`, `id_a`, `corte`, `lectura`, `fotos1`, `fotos2`, `estado`) VALUES
(1, '1', '1', 'y', 'y', 't', 't', '1'),
(2, '1', '1', 'y', 'y', 't', 't', '1'),
(3, '12', '12', 'yr', 'yr', 'tf', 'ff', '1'),
(4, 'dddd', 'ddd', 'ddd', 'dd', '2e02cb255728f7d0.jpg', 'db84f1268238a93f.jpg', 's'),
(5, 'kkk', 'kkkk', 'kkkkdddk', 'ddkkk', '23270e793aa1782b.PNG', '64bd395f7fd4b293.PNG', 'sda'),
(6, '12', '12', '12', '12', '88ed863338c4a40a.PNG', 'f04718593eebac35.psd', '1'),
(7, '27', '10', 'lectura', 'corte', 'ff742984517b1baf.jpg', '83864143c67118e8.jpg', 'uno'),
(8, '27', '10', 'lectura', 'corte', '399e70bb675de901.jpg', 'db08c4067b7c8bbe.jpg', 'uno'),
(9, '26', '10', 'lectura', 'corte', 'b0498fb5817cb33e.jpg', 'b9d21b7e3aa683ab.jpg', 'uno'),
(10, '26', '10', 'lectura', 'corte', '811df4a8bc141053.jpg', '5a9a9f016c89f8b1.jpg', 'uno'),
(11, '27', '10', 'lectura', 'corte', '8e6ce48e2d4acd58.jpg', '11a613115e9b53cf.jpg', 'uno'),
(12, '27', '10', 'lectura', 'corte', '5771d74621d1a349.jpg', 'b99b88a01d0afe5a.jpg', 'uno'),
(13, '26', '10', 'lectura', 'corte', 'f86ecfd3fc35ee53.jpg', '8cca69c5c488fe4e.jpg', 'uno'),
(14, '27', '10', 'lectura', 'corte', '837697a4caf5520e.jpg', 'd0a103ccc863103c.jpg', 'uno');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_administrador`);

--
-- Indices de la tabla `asignar`
--
ALTER TABLE `asignar`
  ADD PRIMARY KEY (`id_asignar`),
  ADD KEY `fk_asignar_cuadrilla1_idx` (`cuadrilla_id_cuadrilla`),
  ADD KEY `fk_asignar_clientes1_idx` (`clientes_id_clientes`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_clientes`),
  ADD KEY `fk_clientes_estado1_idx` (`estado_id_estado`);

--
-- Indices de la tabla `cuadrilla`
--
ALTER TABLE `cuadrilla`
  ADD PRIMARY KEY (`id_cuadrilla`),
  ADD KEY `fk_cuadrilla_administrador_idx` (`administrador_id_administrador`),
  ADD KEY `fk_cuadrilla_estado1_idx` (`estado_id_estado`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id_administrador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `asignar`
--
ALTER TABLE `asignar`
  MODIFY `id_asignar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_clientes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `cuadrilla`
--
ALTER TABLE `cuadrilla`
  MODIFY `id_cuadrilla` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignar`
--
ALTER TABLE `asignar`
  ADD CONSTRAINT `fk_asignar_clientes1` FOREIGN KEY (`clientes_id_clientes`) REFERENCES `clientes` (`id_clientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_asignar_cuadrilla1` FOREIGN KEY (`cuadrilla_id_cuadrilla`) REFERENCES `cuadrilla` (`id_cuadrilla`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `fk_clientes_estado1` FOREIGN KEY (`estado_id_estado`) REFERENCES `estado` (`id_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cuadrilla`
--
ALTER TABLE `cuadrilla`
  ADD CONSTRAINT `fk_cuadrilla_administrador` FOREIGN KEY (`administrador_id_administrador`) REFERENCES `administrador` (`id_administrador`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cuadrilla_estado1` FOREIGN KEY (`estado_id_estado`) REFERENCES `estado` (`id_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
