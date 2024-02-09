-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2024 a las 14:07:05
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `api_subcoffee_web`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat`
--

CREATE TABLE `chat` (
  `id_chat` int(11) NOT NULL,
  `mensaje_chat` varchar(255) DEFAULT NULL,
  `fecha_mensaje` datetime DEFAULT current_timestamp(),
  `fk_id_subasta` int(50) DEFAULT NULL,
  `fk_id_usuario` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `chat`
--

INSERT INTO `chat` (`id_chat`, `mensaje_chat`, `fecha_mensaje`, `fk_id_subasta`, `fk_id_usuario`) VALUES
(1, 'Hola mundo', NULL, 1, 1),
(2, 'Hola mundo', NULL, 1, 1),
(3, 'Hola mundo', NULL, 1, 1),
(4, 'Hola mundo', NULL, 1, 1),
(5, 'Hola mundo', NULL, 1, 1),
(6, 'Hola mundoX2', NULL, 1, 1),
(7, 'Hola mundoX4', '2024-02-07 21:37:21', 1, 1),
(9, 'Hola mundoX5', '2024-02-07 22:03:04', 2, 2),
(10, 'Hola mundoX5', '2024-02-07 22:03:48', 2, 2),
(11, 'Hola mundoX5', '2024-02-07 22:03:48', 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `pk_id_not` int(11) NOT NULL,
  `tipo_not` enum('oferta','mensaje','cierre') NOT NULL,
  `fecha_not` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `texto_not` varchar(255) NOT NULL,
  `fk_id_subasta` int(11) NOT NULL,
  `fk_id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notificaciones`
--

INSERT INTO `notificaciones` (`pk_id_not`, `tipo_not`, `fecha_not`, `texto_not`, `fk_id_subasta`, `fk_id_usuario`) VALUES
(4, 'oferta', '2024-02-08 15:30:00', 'Se realizo una nueva oferta en la subasta de Pepito Perez, corre a verlo', 1, 1),
(5, 'mensaje', '2024-02-08 15:30:00', 'Nuevo mensaje de Pepito Perez Medina', 1, 1),
(6, 'cierre', '2024-02-08 15:30:00', 'Quedan pocos minutos para el cierre de subasta de Pepito, corre a verlo...', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subasta`
--

CREATE TABLE `subasta` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `createAT` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `subasta`
--

INSERT INTO `subasta` (`id`, `title`, `description`, `status`, `createAT`) VALUES
(8, 'hola mundo 2 ', 'hola mundo 2', 0, '2024-02-07 01:44:57'),
(9, 'hola mundo 3 ', 'hola mundo 3\n', 0, '2024-02-07 01:45:10'),
(10, 'holaa mundo 4', 'hola mundo 4', 0, '2024-02-07 02:03:42'),
(11, 'hola mundo 5', 'hola mundo 5', 0, '2024-02-07 02:16:27');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id_chat`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`pk_id_not`);

--
-- Indices de la tabla `subasta`
--
ALTER TABLE `subasta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `chat`
--
ALTER TABLE `chat`
  MODIFY `id_chat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `pk_id_not` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `subasta`
--
ALTER TABLE `subasta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
