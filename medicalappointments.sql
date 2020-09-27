-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-09-2020 a las 04:44:23
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `medicalappointments`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `appointments`
--

CREATE TABLE `appointments` (
  `Id` int(11) NOT NULL,
  `Nombres` varchar(50) NOT NULL,
  `Apellidos` varchar(50) NOT NULL,
  `Documento` varchar(50) NOT NULL,
  `FechaNacimiento` date NOT NULL,
  `Ciudad` varchar(50) NOT NULL,
  `Barrio` varchar(100) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `TelefonoCelular` varchar(15) NOT NULL,
  `FechaCita` datetime NOT NULL,
  `IdMedico` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `appointments`
--

INSERT INTO `appointments` (`Id`, `Nombres`, `Apellidos`, `Documento`, `FechaNacimiento`, `Ciudad`, `Barrio`, `Direccion`, `TelefonoCelular`, `FechaCita`, `IdMedico`) VALUES
(10, 'Cristian ', 'Jimenez', '454325', '2020-05-06', 'Medellin', 'Granizal', 'avenida 40 # 37 34', '1234567890', '2020-12-12 10:40:00', '12'),
(11, 'Luis Eduardo ', 'Bonilla Montoya', '1020423625', '1989-07-12', 'Medellin', 'San Javier', 'avenida. 12', '3174280595', '2020-12-12 11:00:00', '13'),
(12, 'Luis Eduardo', 'Bonilla Montoya', '45454355', '1989-07-12', 'Medellin', 'bosoton', 'Avenida 35...', '3174280595', '2020-12-12 11:00:00', '1'),
(14, 'prueba 1', 'prueba 1', '454532534', '2020-09-13', 'medellin', 'santa lucia', 'av 35 # 66 89', '1234567890', '2020-09-26 20:28:00', '0'),
(15, 'prueba 1', 'prueba 1', '4352455', '2020-09-13', 'medellin', 'santa lucia', 'av 35 # 66 89', '1234567890', '2020-09-25 20:34:00', ''),
(16, 'prueba 1', 'prueba 1', '4352455', '2020-09-13', 'medellin', 'santa lucia', 'av 35 # 66 89', '1234567890', '2020-09-25 20:34:00', ''),
(17, 'prueba 2', 'prueba 2', '435435345', '2020-09-07', 'medellin', 'santa lucia', 'av 35 # 66 89', '1234567890', '2020-09-26 20:46:00', 'Choose...'),
(18, 'prueba 2', 'prueba 1', '443252', '2020-09-06', 'medellin', 'santa lucia', 'av 35 # 66 89', '1234567890', '2020-10-07 21:14:00', 'Choose...'),
(19, 'prueba 2', 'prueba 2', '564325432', '2020-09-08', 'medellin', 'santa lucia', 'av 35 # 66 89', '1234567890', '2020-10-01 21:15:00', 'Choose...'),
(20, 'prueba 2', 'prueba 1', '45314', '2020-09-24', 'medellin', 'santa lucia', 'av 35 # 66 89', '1234567890', '2020-10-02 21:18:00', 'Choose...');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medico`
--

CREATE TABLE `medico` (
  `Id` int(11) NOT NULL,
  `Nombres` varchar(50) NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  `Documento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `medico`
--

INSERT INTO `medico` (`Id`, `Nombres`, `Tipo`, `Documento`) VALUES
(1, 'David Casa Angela Maria', '', ''),
(2, 'Rua Saldarriaga Luisa Fernanda', '', ''),
(3, 'Ortiz Pertuz Vergina', '', ''),
(4, 'Cataño Perez Viviana', '', ''),
(5, 'Restrepo Medrano Alejandro', '', ''),
(11, 'PruebaMedico', 'General', '254545435'),
(12, 'Roberto bolaños', 'General', '454354562'),
(13, 'juan Camilo Posada', 'Odontologo', '098765'),
(14, 'Juan Fernandez', 'Especialista', '0986567'),
(15, 'Gustavo Marin', 'Especialista', '123456797');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `Nombres` varchar(50) NOT NULL,
  `Usuario` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`Id`, `Nombres`, `Usuario`, `Password`, `Tipo`) VALUES
(1, 'Luis Bonilla', 'luis', '1234', 'Admin'),
(3, 'prueba', 'prueba', '1234', 'Usuario'),
(5, 'PruebaAdmin', 'root', '98765', 'Admin'),
(6, 'prueba2', 'root', '1234', 'Admin'),
(7, 'prueba3', 'root', '1234', 'Admin'),
(8, 'prueba4', 'root', '1234', 'Admin'),
(9, 'prueba5', 'root', '1234', 'Admin'),
(10, 'prueba6', 'root', '1234', 'Admin'),
(11, 'prueba7', '1234', '1234', 'Admin'),
(12, 'prueba8', 'prueba8', '98765', 'Admin'),
(13, 'prueba8', 'prueba8', '1234', 'Admin'),
(14, 'prueba8', 'prueba8', '1234', 'Admin'),
(15, 'prueba9', 'prueba9', '1', 'Admin'),
(16, 'Admin', 'Admin', '1234', 'Usuario'),
(17, 'Admin2', 'Admin2', '1234', 'Usuario'),
(18, 'Admin3', 'Admin3', '1234', 'Usuario'),
(19, 'Admin4', 'Admin4', '1234', 'Usuario'),
(20, 'luis Fernanda', 'luisa', '1234', 'Admin'),
(21, 'Luis ', 'hh', '1234', 'Usuario'),
(22, 'Luis Eduardo', 'www', '1234', 'Admin'),
(23, 'Luis Eduardo bonilla', 'lbonilla', '1234', 'Usuario'),
(24, 'Luis Eduardo Bonilla', 'lbonilla2', '1234', 'Admin'),
(25, 'Luis eduardo bonilla', 'lebonilla', '1234', 'Usuario'),
(26, 'Andres Saldarriaga', 'asaldarriaga', '98765', 'Admin'),
(27, 'juan posada', 'jposada', '1234', 'Usuario');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `appointments`
--
ALTER TABLE `appointments`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `medico`
--
ALTER TABLE `medico`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
