-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2026 a las 23:03:27
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `campaña`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `simpatizantes`
--

CREATE TABLE `simpatizantes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(120) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `colonia` varchar(100) DEFAULT NULL,
  `clave_elector` varchar(20) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `municipio` varchar(100) DEFAULT NULL,
  `seccion` varchar(10) DEFAULT NULL,
  `localidad` varchar(50) DEFAULT NULL,
  `comunidad` varchar(50) DEFAULT NULL,
  `distrito` varchar(30) DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `simpatizantes`
--

INSERT INTO `simpatizantes` (`id`, `nombre`, `apellidos`, `colonia`, `clave_elector`, `telefono`, `estado`, `municipio`, `seccion`, `localidad`, `comunidad`, `distrito`, `fecha_registro`) VALUES
(6, 'Carlos', 'Ramírez López', 'Las Flores', 'RMLC890123HGRRPN07', '7441234567', 'Guerrero', 'Acapulco de Juárez', '1234', 'Acapulco', 'La Sabana', '09', '2026-02-08 20:13:12'),
(7, 'Juan', 'Ramírez López', 'Renacimiento', 'JRL890123HGRRPN09', '7447654321', 'Guerrero', 'Acapulco de Juárez', '1975', 'Acapulco', 'Renacimiento', '08', '2026-02-08 20:15:00'),
(10, 'Juan', 'Pérez López', 'Las Flores', 'PERJ800101HDFLRN09', '7441234567', 'Guerrero', 'Acapulco de Juárez', '1234', 'Acapulco', 'La Sabana', '09', '2026-02-11 17:12:12'),
(11, 'Juan', 'Pérez López', 'Las Flores', 'PERJ800101HDFLRN09', '7441234567', 'Guerrero', 'Acapulco de Juárez', '1234', 'Acapulco', 'La Sabana', '10', '2026-02-11 17:13:44'),
(12, 'Juan', 'Pérez López', 'Las Flores', 'PERJ800101HDFLRN09', '7441234567', 'Guerrero', 'Acapulco de Juárez', '1234', 'Acapulco', 'La Sabana', '10', '2026-02-11 17:14:24'),
(13, 'Juan', 'Pérez López', 'Las Flores', 'PERJ800101HDFLRN09', '7441234567', 'Guerrero', 'Acapulco de Juárez', '1234', 'Acapulco', 'La Sabana', '10', '2026-02-11 17:15:08'),
(14, 'Jorge ', 'Serrano ', 'Centro ', '171727171', '316191', 'Acapulco ', 'Guerrero ', '084', 'Acapulco ', 'Centro ', '55', '2026-02-11 18:19:13');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `simpatizantes`
--
ALTER TABLE `simpatizantes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `simpatizantes`
--
ALTER TABLE `simpatizantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
