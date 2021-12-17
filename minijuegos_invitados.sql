-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-12-2021 a las 11:50:12
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `minijuegos_invitados`
--
CREATE DATABASE IF NOT EXISTS `minijuegos_invitados` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `minijuegos_invitados`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `minijuego`
--

CREATE TABLE `minijuego` (
  `idMinijuego` tinyint(3) UNSIGNED NOT NULL,
  `nombre` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `ruta` varchar(3000) COLLATE utf8_spanish_ci NOT NULL,
  `portada` varchar(3000) COLLATE utf8_spanish_ci NOT NULL,
  `fechaHora` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `minijuego`
--

INSERT INTO `minijuego` (`idMinijuego`, `nombre`, `ruta`, `portada`, `fechaHora`) VALUES
(1, 'Los múltiplos', 'ruta1', 'portada1', '2021-11-25 00:00:00'),
(2, 'Tabla periodica', 'ruta2', 'portada2', '2021-11-25 10:06:17'),
(3, 'Reciclaje', 'ruta3', 'portada3', '2021-11-25 10:06:17'),
(4, 'Mekatrhon3000', 'ruta4', 'portada4', '2021-11-25 10:06:17'),
(5, 'Dora La Programadora', 'ruta5', 'portada5', '2021-11-25 10:06:17'),
(6, 'El cascanueces', 'ruta6', 'portada6', '2021-11-25 10:06:17'),
(7, 'Caperucita y la tabla periodica', 'ruta7', 'portada7', '2021-11-25 10:06:17'),
(13, 'Jack', 'null', '1', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel`
--

CREATE TABLE `nivel` (
  `idnivel` int(11) NOT NULL,
  `puntuacion` int(11) NOT NULL,
  `vida` int(11) NOT NULL,
  `velocidad` int(11) NOT NULL,
  `bolas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `nivel`
--

INSERT INTO `nivel` (`idnivel`, `puntuacion`, `vida`, `velocidad`, `bolas`) VALUES
(1, 10, 10, 10, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partida`
--

CREATE TABLE `partida` (
  `idPartida` int(10) UNSIGNED NOT NULL,
  `idMinijuego` tinyint(3) UNSIGNED NOT NULL,
  `nick` char(10) COLLATE utf8_spanish_ci NOT NULL,
  `puntuacion` smallint(5) UNSIGNED NOT NULL,
  `fechaHora` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `partida`
--

INSERT INTO `partida` (`idPartida`, `idMinijuego`, `nick`, `puntuacion`, `fechaHora`) VALUES
(1, 1, 'tumorenito', 100, '2021-11-25 10:06:17'),
(2, 1, 'ManuRelaja', 250, '2021-11-25 10:06:17'),
(3, 2, 'DaniAngel', 120, '2021-11-25 10:06:17'),
(4, 2, 'Richard', 1, '2021-11-25 10:06:17'),
(5, 5, 'Ale66', 2, '2021-11-25 10:06:17'),
(6, 6, 'AbelR', 230, '2021-11-25 10:06:17'),
(7, 4, 'ruas3', 240, '2021-11-25 10:06:17'),
(8, 5, 'Isa66', 5, '2021-11-25 10:06:17'),
(9, 6, 'JuanR', 4, '2021-11-25 10:06:17'),
(10, 4, 'rudss3', 300, '2021-11-25 10:06:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preferencia`
--

CREATE TABLE `preferencia` (
  `usuario` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `idMinijuego` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `contrasenia` varchar(15) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `minijuego`
--
ALTER TABLE `minijuego`
  ADD PRIMARY KEY (`idMinijuego`);

--
-- Indices de la tabla `nivel`
--
ALTER TABLE `nivel`
  ADD PRIMARY KEY (`idnivel`);

--
-- Indices de la tabla `partida`
--
ALTER TABLE `partida`
  ADD PRIMARY KEY (`idPartida`),
  ADD KEY `FK_idMinijuego_Partida` (`idMinijuego`);

--
-- Indices de la tabla `preferencia`
--
ALTER TABLE `preferencia`
  ADD KEY `FK_USUARIO` (`usuario`),
  ADD KEY `FK_IDMINIJUEGO` (`idMinijuego`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `minijuego`
--
ALTER TABLE `minijuego`
  MODIFY `idMinijuego` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `partida`
--
ALTER TABLE `partida`
  MODIFY `idPartida` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `partida`
--
ALTER TABLE `partida`
  ADD CONSTRAINT `FK_idMinijuego_Partida` FOREIGN KEY (`idMinijuego`) REFERENCES `minijuego` (`idMinijuego`);

--
-- Filtros para la tabla `preferencia`
--
ALTER TABLE `preferencia`
  ADD CONSTRAINT `FK_IDMINIJUEGO` FOREIGN KEY (`idMinijuego`) REFERENCES `minijuego` (`idMinijuego`),
  ADD CONSTRAINT `FK_USUARIO` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
