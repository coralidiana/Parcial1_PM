-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-07-2020 a las 01:28:17
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `academico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `identificado`
--

CREATE TABLE `identificado` (
  `ci` varchar(20) NOT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `fecnac` date DEFAULT NULL,
  `codlugar` varchar(10) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `identificado`
--

INSERT INTO `identificado` (`ci`, `nombre`, `fecnac`, `codlugar`, `color`, `foto`) VALUES
('11071219', 'Corali Almanza', '1997-09-02', '01', '#0000FF', 'foto1.jpg'),
('1122334', 'Miguel Natches', '1996-09-03', '03', '#800080', 'foto4.jpg'),
('1234567', 'Amali Lujan', '1995-09-04', '01', '#800080', 'foto3.jpg'),
('223344', 'Alicia Villareal', '1995-09-01', '03', 'black', 'foto2.jpg'),
('445566', 'Victor morat', '1994-05-01', '03', 'green', 'foto6.jpg'),
('4567890', 'Arturo Villazante', '1995-05-06', '02', 'orange', 'foto7.jpg'),
('667788', 'Camilo Cesto', '1994-05-04', '03', '#0000FF', 'foto8.jpg'),
('7790123', 'Alex Urtado', '1997-06-26', '02', 'blue', 'foto5.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id` int(50) NOT NULL,
  `ci` varchar(50) DEFAULT NULL,
  `nota` int(10) DEFAULT NULL,
  `materia` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id`, `ci`, `nota`, `materia`) VALUES
(1, '11071219', 61, 'inf124'),
(2, '11071219', 61, 'inf134'),
(3, '1122334', 70, 'inf124'),
(4, '1122334', 72, 'inf134'),
(5, '223344', 80, 'inf124'),
(6, '223344', 61, 'inf134'),
(7, '7790123', 61, 'inf124'),
(8, '7790123', 61, 'inf134'),
(9, '445566', 61, 'inf124'),
(10, '445566', 61, 'inf134'),
(11, '4567890', 61, 'inf124'),
(12, '4567890', 61, 'inf134'),
(13, '667788', 61, 'inf124');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ci` varchar(20) NOT NULL,
  `clave` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ci`, `clave`) VALUES
('11071219', 'corali'),
('1122334', 'corali'),
('1234567', 'corali'),
('223344', 'corali'),
('445566', 'corali'),
('4567890', 'corali'),
('667788', 'corali'),
('7790123', 'corali');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `identificado`
--
ALTER TABLE `identificado`
  ADD PRIMARY KEY (`ci`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci` (`ci`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ci`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `materia`
--
ALTER TABLE `materia`
  ADD CONSTRAINT `materia_ibfk_1` FOREIGN KEY (`ci`) REFERENCES `identificado` (`ci`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
