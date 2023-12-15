-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-12-2023 a las 02:42:04
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sunegami`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albumes`
--

CREATE TABLE `albumes` (
  `IdAlbum` int(11) NOT NULL,
  `Titulo` varchar(25) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `Usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `albumes`
--

INSERT INTO `albumes` (`IdAlbum`, `Titulo`, `Descripcion`, `Usuario`) VALUES
(1, 'Album1', 'Este es el álbum número 1 de Sunegami', 1),
(2, 'Album2', 'Este es el álbum número 2 de Sunegami', 2),
(3, 'Album3', 'Este es el álbum número 3 de Sunegami', 3),
(4, 'Album4', 'Este es el álbum número 4 de Sunegami', 4),
(5, 'Album 5', 'Descripción del álbum 5', 1),
(6, 'Album 6', 'Descripción del álbum 6', 2),
(7, 'Album 7', 'Descripción del álbum 7', 3),
(8, 'Album 8', 'Descripción del álbum 8', 4),
(9, 'Album 9', 'Descripción del álbum 9', 1),
(10, 'Album10', 'Descripción del álbum 10', 2),
(12, 'FOTO 2', 'asdads', 4),
(13, '', '', 4),
(14, '', '', 4),
(15, 'FOTO 2', '', 4),
(16, '', '', 4),
(17, '', '', 4),
(18, '', '', 4),
(19, 'HOLA', '', 4),
(20, 'HOLA', '', 4),
(21, 'FOTO 2', 'hola que tal', 4),
(22, 'asdasd', 'asdasdas', 4),
(23, 'asdasdsadasdasdas', 'asdasdasdsadasd', 4),
(24, 'album 20000', 'addsffafdfsfsfsfsdfsf', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estilos`
--

CREATE TABLE `estilos` (
  `IdEstilo` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` varchar(250) NOT NULL,
  `Fichero` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `estilos`
--

INSERT INTO `estilos` (`IdEstilo`, `Nombre`, `Descripcion`, `Fichero`) VALUES
(1, 'Estilo principal', 'Descripción del estilo principal', 'estilo.css'),
(2, 'Oscuro', 'Texto del estilo oscuro', 'estilo-oscuro.css'),
(3, 'Grande', 'Descripción del estilo grande', 'estilo-grande.css'),
(4, 'Alto contraste', 'Descripción del estilo de alto contraste', 'alto-contraste.css');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE `fotos` (
  `IdFoto` int(11) NOT NULL,
  `Titulo` varchar(100) NOT NULL,
  `Descripcion` varchar(250) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Pais` int(11) DEFAULT NULL,
  `Album` int(11) NOT NULL,
  `Fichero` varchar(250) NOT NULL,
  `Alternativo` varchar(255) NOT NULL,
  `FRegistro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `fotos`
--

INSERT INTO `fotos` (`IdFoto`, `Titulo`, `Descripcion`, `Fecha`, `Pais`, `Album`, `Fichero`, `Alternativo`, `FRegistro`) VALUES
(1, 'Título de la foto 1', 'Descripción de la foto 1', '2023-11-29', 1, 1, './imagenes/cbr.jpg', 'Texto alternativo de la foto 1', '2023-11-25 11:21:32'),
(2, 'Título de la foto 2', 'Descripción de la foto 2', '2023-11-30', 2, 1, './imagenes/vespino.jpg', 'Texto alternativo de la foto 2', '2023-11-27 00:12:23'),
(3, 'Título de la foto 3', 'Descripción de la foto 3', '2023-11-13', 3, 3, './imagenes/benelli.jpg', 'Texto alternativo de la foto 3', '2023-11-26 18:16:11'),
(4, 'Título de la foto 4', 'Descripción de la foto 4', '2023-11-19', 4, 4, './imagenes/keanu.jpg', 'Texto alternativo de la foto 4', '2023-11-26 17:37:58'),
(5, 'Titulo de la foto 5', 'Descripción de la foto 5', '2014-03-07', 1, 1, './imagenes/majes.jpg', 'Texto alternativo de la foto 5', '2023-11-27 00:01:19'),
(6, 'Titulo de la foto 6', 'Descripción de la foto 6', '2005-07-20', 1, 2, './imagenes/gorra.png', 'texto alternativo de la foto 6', '2023-11-27 00:09:41'),
(7, 'Titulo de la foto 7', 'Descripción de la foto 7', '1996-11-15', 2, 2, './imagenes/knekro1.png', 'Texto alternativo de la foto 7', '2023-11-27 00:11:50'),
(8, 'Titulo de la foto 8', 'Descripción de la foto 8', '2022-11-10', 3, 1, './imagenes/cuadro.jpg', 'Texto alternativo de la foto 8', '2023-11-27 00:09:41'),
(27, 'FOTO 2', 'asdsadsd', '2023-12-04', 2, 15, '', 'asdasdasd', '2023-12-14 20:14:52'),
(28, 'asdasdasdasdasd', '', '0000-00-00', 1, 8, '', 'asdasdasdasd', '2023-12-14 20:28:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `IdPais` int(11) NOT NULL,
  `NomPais` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`IdPais`, `NomPais`) VALUES
(1, 'España'),
(2, 'Alemania'),
(3, 'Italia'),
(4, 'Francia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE `solicitudes` (
  `IdSolicitud` int(11) NOT NULL,
  `Album` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `Titulo` varchar(200) NOT NULL,
  `Descripcion` varchar(4000) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Color` varchar(20) NOT NULL,
  `Copias` int(11) NOT NULL,
  `Resolucion` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `IColor` tinyint(1) NOT NULL,
  `FRegistro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Coste` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `solicitudes`
--

INSERT INTO `solicitudes` (`IdSolicitud`, `Album`, `Nombre`, `Titulo`, `Descripcion`, `Email`, `Direccion`, `Color`, `Copias`, `Resolucion`, `Fecha`, `IColor`, `FRegistro`, `Coste`) VALUES
(1, 1, 'Nombre del solicitante', 'Título de la solicitud', 'Descripción de la solicitud', 'email@gmail.com', 'Dirección de la solicitud', 'Color de la solicitu', 1, 900, '2024-11-01', 0, '2023-11-20 23:57:17', 15),
(6, 8, 'pepe', 'FOTO 2', 'asasdasd', 'pepe@gmail.com', 'sdfsdsdf', '#000000', 4, 450, '2023-12-11', 0, '2023-12-14 15:11:18', 0.48000000000000004),
(8, 8, '', '', '', '', '', '#000000', 0, 150, '0000-00-00', 0, '2023-12-14 20:36:28', 0),
(9, 8, '', '', '', '', '', '#000000', 0, 150, '0000-00-00', 0, '2023-12-14 20:43:39', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `IdUsuario` int(11) NOT NULL,
  `NomUsuario` varchar(15) NOT NULL,
  `Clave` varchar(15) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Sexo` tinyint(4) NOT NULL,
  `FNacimiento` date NOT NULL,
  `Ciudad` varchar(100) NOT NULL,
  `Pais` int(11) NOT NULL,
  `Foto` varchar(100) DEFAULT NULL,
  `FRegistro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Estilo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`IdUsuario`, `NomUsuario`, `Clave`, `Email`, `Sexo`, `FNacimiento`, `Ciudad`, `Pais`, `Foto`, `FRegistro`, `Estilo`) VALUES
(1, 'jose', '1234', 'asdasdasd', 0, '2023-12-11', 'Alicante', 1, './imagenes/user1.jpg', '2023-12-14 21:06:25', 1),
(2, 'Juan', '4321', 'juan@gmail.com', 1, '2000-09-04', 'Berlín', 2, './imagenes/Francis.png', '2023-11-25 23:37:49', 2),
(3, 'María', '6789', 'maria@gmail.com', 2, '1993-12-17', 'Venecia', 3, './imagenes/user2.jpg', '2023-11-25 23:36:45', 3),
(4, 'Ana', '2134', 'ana@gmail.com', 1, '1988-06-16', 'Alicante', 1, './imagenes/knekro1.png', '2023-12-14 21:21:44', 4),
(6, 'jose', '2134', 'jose@gmail.com', 0, '2020-12-23', 'Alicante', 1, NULL, '0000-00-00 00:00:00', NULL),
(21, 'pedro', '1234', 'jose@gmail.com', 0, '2020-12-23', 'Alicante', 1, NULL, '2023-12-14 02:26:30', NULL),
(22, 'jose', '456', 'jose@gmail.com', 0, '2020-12-23', 'Alicante', 1, NULL, '0000-00-00 00:00:00', NULL),
(23, 'jose', 'asd', 'jose@gmail.com', 0, '2020-12-23', 'Alicante', 1, NULL, '0000-00-00 00:00:00', NULL),
(30, 'pedro', '2134', 'jose@gmail.com', 0, '2020-12-23', 'Alicante', 1, NULL, '0000-00-00 00:00:00', NULL),
(31, 'jose', '2134', 'jose@gmail.com', 0, '2020-12-23', 'Alicante', 1, NULL, '0000-00-00 00:00:00', NULL),
(32, 'jose', '2134', 'jose@gmail.com', 0, '2020-12-23', 'Alicante', 1, NULL, '0000-00-00 00:00:00', NULL),
(33, 'jose', '2134', 'jose@gmail.com', 1, '2020-12-23', 'Alicante', 1, NULL, '0000-00-00 00:00:00', NULL),
(34, 'pedro', '2134', 'jose@gmail.com', 2, '2020-12-23', 'Madrid', 3, NULL, '0000-00-00 00:00:00', NULL),
(35, 'josefffff', '2134', 'jose@gmail.com', 1, '2020-12-23', 'Alicante', 1, NULL, '0000-00-00 00:00:00', NULL),
(36, 'pedro', 'aA1234', 'jose@gmail.com', 2, '2020-12-23', 'Alicante', 1, NULL, '0000-00-00 00:00:00', NULL),
(37, 'pedro', 'aA1234', 'jose@gmail.com', 2, '2020-12-23', 'Alicante', 1, NULL, '0000-00-00 00:00:00', NULL),
(38, 'josefffff', 'aA1234', 'jose@gmail.com', 2, '2020-12-23', 'Alicante', 1, NULL, '0000-00-00 00:00:00', NULL),
(39, 'josefffff', 'aA1234', 'jose@gmail.com', 2, '2000-12-23', 'Alicante', 1, NULL, '0000-00-00 00:00:00', NULL),
(40, 'josefffff', 'aA1234', 'jose@gmail.com', 2, '2000-12-23', 'Alicante', 1, NULL, '0000-00-00 00:00:00', NULL),
(41, 'josefffff', 'aA1234', 'jose@gmail.com', 2, '2000-12-23', 'Alicante', 1, NULL, '2023-12-14 02:50:24', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `albumes`
--
ALTER TABLE `albumes`
  ADD PRIMARY KEY (`IdAlbum`),
  ADD KEY `FK_Album_Usuario` (`Usuario`);

--
-- Indices de la tabla `estilos`
--
ALTER TABLE `estilos`
  ADD PRIMARY KEY (`IdEstilo`);

--
-- Indices de la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`IdFoto`),
  ADD KEY `FK_Fotos_Paises` (`Pais`),
  ADD KEY `FK_Fotos_Albumes` (`Album`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`IdPais`);

--
-- Indices de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`IdSolicitud`),
  ADD KEY `FK_Solicitudes_Albumes` (`Album`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`IdUsuario`),
  ADD KEY `FK_Usuario_Paises` (`Pais`),
  ADD KEY `FK_Usuario_Estilos` (`Estilo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `albumes`
--
ALTER TABLE `albumes`
  MODIFY `IdAlbum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `estilos`
--
ALTER TABLE `estilos`
  MODIFY `IdEstilo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `fotos`
--
ALTER TABLE `fotos`
  MODIFY `IdFoto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `IdPais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  MODIFY `IdSolicitud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `IdUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `albumes`
--
ALTER TABLE `albumes`
  ADD CONSTRAINT `FK_Album_Usuario` FOREIGN KEY (`Usuario`) REFERENCES `usuarios` (`IdUsuario`);

--
-- Filtros para la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD CONSTRAINT `FK_Fotos_Albumes` FOREIGN KEY (`Album`) REFERENCES `albumes` (`IdAlbum`),
  ADD CONSTRAINT `FK_Fotos_Paises` FOREIGN KEY (`Pais`) REFERENCES `paises` (`IdPais`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD CONSTRAINT `FK_Solicitudes_Albumes` FOREIGN KEY (`Album`) REFERENCES `albumes` (`IdAlbum`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `FK_Usuario_Estilos` FOREIGN KEY (`Estilo`) REFERENCES `estilos` (`IdEstilo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Usuario_Paises` FOREIGN KEY (`Pais`) REFERENCES `paises` (`IdPais`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
