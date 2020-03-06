-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-03-2020 a las 18:41:04
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `chatwo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `id_mensaje` int(11) NOT NULL,
  `fk_usuario` int(11) NOT NULL,
  `fk_usuario_para` int(11) NOT NULL,
  `fk_sala` int(11) NOT NULL,
  `mensaje` text COLLATE utf8_unicode_ci NOT NULL,
  `fecha_enviado` date NOT NULL,
  `hora_enviado` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`id_mensaje`, `fk_usuario`, `fk_usuario_para`, `fk_sala`, `mensaje`, `fecha_enviado`, `hora_enviado`) VALUES
(1, 1, 3, 1, 'Hey', '2020-03-06', '24:14:00'),
(2, 3, 1, 1, 'Hola', '2020-03-06', '24:14:00'),
(3, 2, 1, 3, 'Holaaaa', '2020-03-06', '28:13:00'),
(4, 1, 3, 1, 'Como vas?', '2020-03-06', '24:14:00'),
(5, 3, 1, 1, 'Bien y tu?', '2020-03-06', '16:21:31'),
(6, 3, 1, 1, 'Todo Bien?', '2020-03-06', '16:21:49'),
(7, 1, 3, 1, 'si y tu como vas?', '2020-03-06', '16:22:56'),
(8, 1, 3, 1, 'all fine', '2020-03-06', '16:27:50'),
(9, 1, 3, 1, 'bla', '2020-03-06', '16:28:23'),
(10, 1, 3, 1, '', '2020-03-06', '16:28:26'),
(11, 1, 3, 1, '', '2020-03-06', '16:28:29'),
(12, 1, 3, 1, '', '2020-03-06', '16:28:31'),
(13, 1, 3, 1, 'all fine', '2020-03-06', '16:31:54'),
(14, 1, 2, 3, 'que tal', '2020-03-06', '16:32:37'),
(15, 1, 2, 3, 'todo bien', '2020-03-06', '16:32:43'),
(16, 1, 2, 3, 'si', '2020-03-06', '16:34:14'),
(17, 1, 2, 3, 'estás segura?', '2020-03-06', '16:34:40'),
(18, 1, 4, 5, 'Hola', '2020-03-06', '16:34:52'),
(19, 1, 1, 8, 'Hola', '2020-03-06', '16:45:15'),
(21, 3, 1, 1, 'Hola', '2020-03-06', '17:02:57'),
(22, 3, 1, 1, 'bebé', '2020-03-06', '17:04:27'),
(23, 1, 3, 1, 'voy', '2020-03-06', '17:04:32'),
(24, 3, 2, 2, 'Hola', '2020-03-06', '17:13:17'),
(25, 3, 1, 1, 'ya', '2020-03-06', '17:14:20'),
(26, 1, 3, 1, 'si', '2020-03-06', '17:15:05'),
(27, 3, 1, 1, 'segura', '2020-03-06', '17:19:10'),
(28, 3, 1, 1, 'si', '2020-03-06', '17:22:15'),
(29, 1, 3, 1, 'ok', '2020-03-06', '17:22:40'),
(30, 3, 1, 1, 'segura', '2020-03-06', '17:23:28'),
(31, 1, 3, 1, 'lo dudo', '2020-03-06', '17:23:51'),
(32, 3, 1, 1, 's', '2020-03-06', '17:24:13'),
(33, 3, 1, 1, 'yes', '2020-03-06', '17:24:20'),
(34, 3, 1, 1, 'a ver', '2020-03-06', '17:24:51'),
(35, 3, 1, 1, 'y sigo aquí', '2020-03-06', '17:25:14'),
(36, 1, 3, 1, 'sin tu amor', '2020-03-06', '17:25:49'),
(37, 1, 3, 1, 'there', '2020-03-06', '17:31:16'),
(38, 1, 3, 1, 'two', '2020-03-06', '17:31:48'),
(39, 3, 1, 1, 'one', '2020-03-06', '17:32:04'),
(40, 3, 1, 1, 'cero', '2020-03-06', '17:32:11'),
(41, 1, 3, 1, 'two', '2020-03-06', '17:32:15'),
(42, 1, 3, 1, 'alert(\"hola\");', '2020-03-06', '17:32:32'),
(43, 1, 3, 1, 'alert(\"hola\")', '2020-03-06', '17:32:46'),
(44, 1, 3, 1, 'no lo puedo evitar', '2020-03-06', '17:33:12'),
(45, 1, 3, 1, 'fouw', '2020-03-06', '17:33:28'),
(46, 3, 1, 1, 'i have to get my need', '2020-03-06', '17:33:53'),
(47, 3, 1, 1, 'verdad', '2020-03-06', '17:35:20'),
(48, 1, 3, 1, 'yo no sé', '2020-03-06', '17:35:40'),
(49, 3, 1, 1, 'a', '2020-03-06', '17:36:01'),
(50, 3, 1, 1, '', '2020-03-06', '17:39:57'),
(51, 3, 1, 1, 'hola', '2020-03-06', '17:40:12'),
(52, 3, 1, 1, 'hola', '2020-03-06', '17:41:20'),
(53, 3, 1, 1, '', '2020-03-06', '17:41:34'),
(54, 1, 3, 1, 'y es que no te puedo evitar', '2020-03-06', '17:43:02'),
(55, 3, 1, 1, 'hey', '2020-03-06', '17:44:07'),
(56, 3, 1, 1, 'hey', '2020-03-06', '17:44:16'),
(57, 1, 3, 1, 'holi', '2020-03-06', '17:45:27'),
(58, 3, 1, 1, 'sipi', '2020-03-06', '17:46:51'),
(59, 1, 3, 1, '', '2020-03-06', '17:48:15'),
(60, 1, 3, 1, '', '2020-03-06', '17:49:08'),
(61, 3, 1, 1, 'sip', '2020-03-06', '17:49:17'),
(62, 1, 3, 1, 'gol', '2020-03-06', '17:52:39'),
(63, 3, 1, 1, 'sip', '2020-03-06', '17:52:43'),
(64, 3, 1, 1, 'sip', '2020-03-06', '17:52:52'),
(65, 3, 1, 1, '', '2020-03-06', '17:53:20'),
(66, 1, 3, 1, 'holo', '2020-03-06', '17:54:24'),
(67, 1, 3, 1, 'holo', '2020-03-06', '17:54:32'),
(68, 1, 3, 1, 'hi', '2020-03-06', '17:54:58'),
(69, 1, 3, 1, 'hi', '2020-03-06', '17:55:05'),
(70, 1, 3, 1, 'hi', '2020-03-06', '17:55:43'),
(71, 1, 3, 1, 'how', '2020-03-06', '17:55:49'),
(72, 1, 3, 1, 'hi', '2020-03-06', '17:56:15'),
(73, 1, 3, 1, 'asd', '2020-03-06', '17:58:23'),
(74, 1, 3, 1, 'asdp', '2020-03-06', '17:58:28'),
(75, 3, 1, 1, 'asd', '2020-03-06', '18:03:02'),
(76, 3, 1, 1, 'sseeeeep', '2020-03-06', '18:04:41'),
(77, 1, 3, 1, 'hola', '2020-03-06', '18:07:19'),
(78, 1, 3, 1, 'no', '2020-03-06', '18:07:25'),
(79, 3, 1, 1, 'a ver', '2020-03-06', '18:07:46'),
(80, 1, 3, 1, 'a ver', '2020-03-06', '18:07:51'),
(81, 1, 3, 1, 'sd', '2020-03-06', '18:07:55'),
(82, 3, 1, 1, 'asp', '2020-03-06', '18:10:00'),
(83, 1, 3, 1, 'hola', '2020-03-06', '18:13:43'),
(84, 1, 3, 1, 'bien', '2020-03-06', '18:14:18'),
(89, 3, 1, 1, 'adasd', '2020-03-06', '18:34:33'),
(92, 1, 3, 1, 'asda', '2020-03-06', '18:34:58'),
(93, 1, 3, 1, 'asp.net', '2020-03-06', '18:35:06'),
(94, 1, 3, 1, 'no puedo vivir niii', '2020-03-06', '18:35:28'),
(95, 3, 1, 1, 'i have to get to my neeed somedays', '2020-03-06', '18:35:38'),
(96, 1, 3, 1, '', '2020-03-06', '18:37:47'),
(97, 1, 3, 1, 'cuando', '2020-03-06', '18:38:00'),
(98, 1, 3, 1, 'nooo', '2020-03-06', '18:38:12'),
(99, 3, 1, 1, 'i have', '2020-03-06', '18:38:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sala`
--

CREATE TABLE `sala` (
  `id_sala` int(11) NOT NULL,
  `fk_tipo` int(11) NOT NULL,
  `fk_usuario_sala_de` int(11) NOT NULL,
  `fk_usuario_sala_para` int(11) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sala`
--

INSERT INTO `sala` (`id_sala`, `fk_tipo`, `fk_usuario_sala_de`, `fk_usuario_sala_para`, `fecha`) VALUES
(1, 1, 1, 3, '2020-03-06 00:00:00'),
(2, 1, 3, 2, '2020-03-06 15:36:39'),
(3, 1, 2, 1, '2020-03-06 15:37:22'),
(4, 1, 2, 2, '2020-03-06 15:53:40'),
(5, 1, 1, 4, '2020-03-06 15:57:15'),
(6, 1, 3, 4, '2020-03-06 16:01:53'),
(7, 1, 3, 3, '2020-03-06 16:02:26'),
(8, 1, 1, 1, '2020-03-06 16:45:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sala_usuario`
--

CREATE TABLE `sala_usuario` (
  `id_sala_usuario` int(11) NOT NULL,
  `fk_sala` int(11) NOT NULL,
  `fk_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sala_usuario`
--

INSERT INTO `sala_usuario` (`id_sala_usuario`, `fk_sala`, `fk_usuario`) VALUES
(1, 1, 1),
(2, 2, 3),
(3, 3, 3),
(4, 4, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_sala`
--

CREATE TABLE `tipo_sala` (
  `id_tipo_sala` int(11) NOT NULL,
  `nombre_tipo_sala` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_sala`
--

INSERT INTO `tipo_sala` (`id_tipo_sala`, `nombre_tipo_sala`) VALUES
(1, 'privada'),
(2, 'grupo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nick_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `nombres` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contra` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_creacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nick_name`, `nombres`, `apellidos`, `correo`, `contra`, `avatar`, `fecha_creacion`) VALUES
(1, 'felio', 'Felipe', 'chacon', 'felipe@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '2019-10-19'),
(2, 'Felioo', 'andres', 'cifuentes', 'felipipe@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '2019-10-20'),
(3, 'juan', 'juan', 'chacon', 'Juan@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '2020-03-03'),
(4, 'Tefaaaaaaa27', 'Avril stefania ', 'soler nieto', 'stefaniasoler57@gmail.com', 'd6ea3305ace3c984c8263b869247304b', '', '2020-03-03');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id_mensaje`),
  ADD KEY `fk_usuario` (`fk_usuario`),
  ADD KEY `fk_sala` (`fk_sala`),
  ADD KEY `fk_usuario_para` (`fk_usuario_para`);

--
-- Indices de la tabla `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`id_sala`),
  ADD KEY `fk_tipo` (`fk_tipo`),
  ADD KEY `fk_usuario_sala_para` (`fk_usuario_sala_para`),
  ADD KEY `fk_usuario_sala_de` (`fk_usuario_sala_de`);

--
-- Indices de la tabla `sala_usuario`
--
ALTER TABLE `sala_usuario`
  ADD PRIMARY KEY (`id_sala_usuario`),
  ADD KEY `fk_usuario` (`fk_usuario`),
  ADD KEY `fk_sala` (`fk_sala`);

--
-- Indices de la tabla `tipo_sala`
--
ALTER TABLE `tipo_sala`
  ADD PRIMARY KEY (`id_tipo_sala`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id_mensaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `sala`
--
ALTER TABLE `sala`
  MODIFY `id_sala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `sala_usuario`
--
ALTER TABLE `sala_usuario`
  MODIFY `id_sala_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipo_sala`
--
ALTER TABLE `tipo_sala`
  MODIFY `id_tipo_sala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD CONSTRAINT `mensajes_ibfk_1` FOREIGN KEY (`fk_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `mensajes_ibfk_2` FOREIGN KEY (`fk_sala`) REFERENCES `sala` (`id_sala`),
  ADD CONSTRAINT `mensajes_ibfk_3` FOREIGN KEY (`fk_usuario_para`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `sala`
--
ALTER TABLE `sala`
  ADD CONSTRAINT `sala_ibfk_1` FOREIGN KEY (`fk_tipo`) REFERENCES `tipo_sala` (`id_tipo_sala`),
  ADD CONSTRAINT `sala_ibfk_2` FOREIGN KEY (`fk_usuario_sala_para`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `sala_ibfk_3` FOREIGN KEY (`fk_usuario_sala_de`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `sala_usuario`
--
ALTER TABLE `sala_usuario`
  ADD CONSTRAINT `sala_usuario_ibfk_1` FOREIGN KEY (`fk_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `sala_usuario_ibfk_2` FOREIGN KEY (`fk_sala`) REFERENCES `sala` (`id_sala`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
