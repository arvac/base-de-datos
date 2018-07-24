-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-06-2018 a las 05:20:23
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
-- Base de datos: `api_rest_medica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `from_users_id` int(11) NOT NULL,
  `to_users_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `sentat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `messages`
--

INSERT INTO `messages` (`id`, `from_users_id`, `to_users_id`, `title`, `message`, `sentat`) VALUES
(1, 4, 2, 'hjk', 'tyui', '2018-04-05 04:08:34'),
(2, 4, 3, 'iris', 'rissd', '2018-04-05 04:13:50'),
(3, 4, 3, 'otro mensaje de iris', 'iris', '2018-04-05 04:14:18'),
(4, 3, 4, 'cors', 'unbmcors', '2018-04-05 04:15:00'),
(5, 3, 3, 'cors', 'corsss', '2018-04-05 04:15:27'),
(6, 3, 4, 'irisss', 'soy cors', '2018-04-05 04:16:38'),
(7, 13, 13, 'test', 'test', '2018-04-10 18:04:00'),
(8, 14, 1, 'eee', 'eee', '2018-04-12 18:18:30'),
(9, 5, 5, 'xxxx', 'xxx', '2018-05-02 01:16:51'),
(10, 5, 13, 'xzxzx', 'xzzz', '2018-05-02 01:18:45'),
(11, 5, 11, 'yuyu', 'yuyuy', '2018-05-02 01:20:14'),
(12, 5, 14, 'tttt', 'tttt', '2018-05-02 01:20:50'),
(13, 18, 3, 'zzz', 'zxx', '2018-05-02 01:26:02'),
(14, 18, 11, 'ww', 'z', '2018-05-02 01:33:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `gender` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `gender`) VALUES
(1, 'patricio', 'parQ@email.com', '12345', 'macho'),
(2, 'fabricio', 'fabricio@gmail.com', '12345', 'masculino'),
(3, 'cors', 'cors@email.com', '827ccb0eea8a706c4c34a16891f84e7b', 'macho'),
(4, 'iris', 'ir@g.com', '202cb962ac59075b964b07152d234b70', 'Female'),
(5, 'ar', 'q', '7694f4a66316e53c8cdd9d9954bd611d', 'Male'),
(8, 'a', 'a@g.com', '0cc175b9c0f1b6a831c399e269772661', 'Male'),
(9, 'cccccc', 'cccccc@gmail.com', 'b59c67bf196a4758191e42f76670ceba', 'Male'),
(10, 'qq', 'qq', '4a7d1ed414474e4033ac29ccb8653d9b', 'Female'),
(11, 'ww', 'ww', '4a7d1ed414474e4033ac29ccb8653d9b', 'Male'),
(12, 'ddd', 'dd', '4a7d1ed414474e4033ac29ccb8653d9b', 'Male'),
(13, 'ff', 'ff', '6512bd43d9caa6e02c990b0a82652dca', 'Female'),
(14, 'e', 'e', 'e1671797c52e15f763380b45e841ec32', 'Male'),
(15, 'gr', 'gr', 'd692bc40d83423d24d3a37582f58468c', 'Male'),
(16, 'r', 'r', '4b43b0aee35624cd95b910189b3dc231', 'Male'),
(17, 'yu', 'yu', '385d04e7683a033fcc6c6654529eb7e9', 'male'),
(18, 'z', 'z', 'fbade9e36a3f36d3d676c1b808451dd7', 'male'),
(19, 'rr', 'rr', '514f1b439f404f86f77090fa9edc96ce', 'female'),
(20, 'rr', 'rrr', '514f1b439f404f86f77090fa9edc96ce', 'female'),
(21, 'rr', 'rrrww', '514f1b439f404f86f77090fa9edc96ce', 'female'),
(22, 'rr', 'rrrwwqq', '514f1b439f404f86f77090fa9edc96ce', 'female'),
(23, 'rr', 'rrrwwqqasa', '514f1b439f404f86f77090fa9edc96ce', 'female'),
(24, 'rrrrrr', 'rrrwwqqasafffdfd', '514f1b439f404f86f77090fa9edc96ce', 'female'),
(25, 'df', 'df', 'eff7d5dba32b4da32d9a67a519434d3f', 'Male'),
(26, 'ty', 'ty', '36f3af6226e0b5303e19b824e7442272', 'Female'),
(27, 't', 't', 'e358efa489f58062f10dd7316b65649e', 'Male'),
(28, 't', 'yt', 'fa0ed5b5c600145bdd9a299952b99651', 'Male'),
(29, 'pp', 'pp', 'c483f6ce851c9ecd9fb835ff7551737c', 'Male'),
(30, 'x', 'x', '9dd4e461268c8034f5c8564e155c67a6', 'Male');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_users_from` (`to_users_id`),
  ADD KEY `messages_users_to` (`from_users_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_users_from` FOREIGN KEY (`to_users_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `messages_users_to` FOREIGN KEY (`from_users_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
