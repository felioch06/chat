-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-03-2020 a las 19:03:25
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
  `hora_enviado` time NOT NULL,
  `visto` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`id_mensaje`, `fk_usuario`, `fk_usuario_para`, `fk_sala`, `mensaje`, `fecha_enviado`, `hora_enviado`, `visto`) VALUES
(1, 1, 1, 8, 'felio', '2020-03-08', '17:30:32', 0),
(2, 1, 5, 9, 'felipe', '2020-03-08', '17:32:23', 1),
(3, 1, 1, 8, 'hola', '2020-03-08', '17:39:24', 1),
(4, 1, 1, 8, 'como', '2020-03-08', '17:39:29', 0),
(5, 1, 1, 8, 'estas', '2020-03-08', '17:39:31', 0),
(6, 5, 1, 9, 'Hola', '2020-03-08', '17:43:58', 1),
(7, 1, 5, 9, 'hola', '2020-03-08', '17:44:22', 1),
(8, 1, 5, 9, 'Que tal', '2020-03-08', '18:04:49', 1),
(9, 1, 5, 9, 'bien', '2020-03-08', '18:06:18', 1),
(10, 5, 1, 9, 'Prueba Visto', '2020-03-08', '18:20:23', 1),
(11, 5, 1, 9, 'hey', '2020-03-08', '18:22:02', 1),
(12, 5, 1, 9, 'hey', '2020-03-08', '18:29:18', 1),
(13, 5, 1, 9, 'hey', '2020-03-08', '18:29:36', 1),
(14, 5, 1, 9, 'hola', '2020-03-08', '18:34:22', 1),
(15, 1, 5, 9, 'Holaaaaaaaa', '2020-03-08', '18:38:23', 1),
(16, 3, 5, 11, 'Hola', '2020-03-08', '18:40:03', 1),
(17, 5, 3, 11, 'Hey', '2020-03-08', '18:40:54', 1),
(18, 3, 5, 11, 'Hola', '2020-03-08', '18:48:39', 1),
(19, 3, 5, 11, 'Hola', '2020-03-08', '18:52:31', 1),
(20, 3, 5, 11, 'prueba', '2020-03-08', '18:54:46', 1);

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
(8, 1, 1, 1, '2020-03-06 16:45:12'),
(9, 1, 5, 1, '2020-03-08 16:32:42'),
(10, 1, 5, 5, '2020-03-08 16:49:43'),
(11, 1, 3, 5, '2020-03-08 18:40:00');

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
  `nombres` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellidos` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `correo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contra` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_creacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nick_name`, `nombres`, `apellidos`, `correo`, `contra`, `avatar`, `fecha_creacion`) VALUES
(1, 'felio', 'Felipe', 'chacon', 'felipe@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'assets/img/default_user.jpg', '2019-10-19'),
(2, 'Felioo', 'andres', 'cifuentes', 'felipipe@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'assets/img/default_user.jpg', '2019-10-20'),
(3, 'juan', 'juan', 'chacon', 'Juan@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'assets/img/default_user.jpg', '2020-03-03'),
(4, 'Pedro', 'Leon', 'Pedro', 'pedro@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'assets/img/default_user.jpg', '2020-03-03'),
(5, 'Camilo', 'Juan', 'Camilo', 'camilo@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'assets/img/default_user.jpg', '2020-03-08');

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
  MODIFY `id_mensaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `sala`
--
ALTER TABLE `sala`
  MODIFY `id_sala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
