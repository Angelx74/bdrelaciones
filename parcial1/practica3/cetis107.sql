-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-02-2025 a las 02:12:48
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cetis107`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `numero_control` varchar(20) NOT NULL,
  `fecha_de_nacimiento` date NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `numero_control`, `fecha_de_nacimiento`, `genero`, `correo`, `telefono`) VALUES
(1, 'Luis Angel', 'Moya Preciado', '23325061070393', '2008-12-29', 1, 'langel.moya1208@gmail.com', '+52 33 1088 3392'),
(2, 'Santiago', 'Lopez Aispuro', '23325061070386', '2008-04-20', 1, 'lopezaispurosantiago@gmail.com', '66733009322'),
(3, 'Bayron Uriel', 'Estrada Camacho', '23325061070375', '2008-08-13', 1, 'estradacamachobayronuriel@gmail.com', '+1 (909) 516-0134'),
(4, 'Angel Gibran', 'Loaiza Garcia', '23325061070694', '2008-08-23', 1, 'loaizagarciaangelgibran@gmail.com', '+52 667 145 1436'),
(5, 'Paolo Nicholas', 'Valdez Bernal', '23325061070460', '2008-10-30', 1, 'valezbernalpaolonicholas@gmail.com', '+52 667 541 2714'),
(6, 'Victor Manuel', 'Diaz Gastelum', '233250610707228', '2008-09-28', 1, 'diazgastelumvictormanuel@gmail.com', '+52 667 791 1274'),
(7, 'Jonathan Horus', 'Zazueta Hernandez', ' 2332506107008', '2008-04-09', 1, 'jonathan.zazueta23@cetis107.edu.mx', '6673940877'),
(8, 'Sergio Braulio', 'Martinez Felix', ' 2332506107009', '2008-09-29', 1, 'sergio.martinez23@cetis107.edu.mx', '6673940877'),
(9, 'Jorge Luis ', 'Garcia Figueroa', ' 23325061070531', '2008-02-13', 1, 'jorge.garcia23@cetis107.edu.mx', '6676210221'),
(10, 'Hugo Alejandro ', 'Rubio Maldonado', ' 233250610705357', '2008-08-22', 1, 'hugoale227@gmail.com', '6676410842');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Programacion', 'La formación que ofrece la carrera de Técnico en Programación permite al egresado, a través de la articulación de saberes de diversos campos,\r\nrealizar actividades dirigidas al desarrollo de software de aplicación en plataformas de escritorio, Web y móviles, utilizando los paradigmas de\r\nprogramació'),
(2, 'Ofimatica', 'La carrera de Técnico en Ofimática permite a los estudiantes, a lo largo del bachillerato, la adquisición de competencias desde distintos ámbitos\r\nque promueven la formación integral, sustentada en las genéricas, disciplinares y profesionales, complementadas con las de productividad y\r\nempleabilidad'),
(3, 'Electronica', 'Manejo de circuitos'),
(4, 'Contabilidad', 'administracion de empresas'),
(5, 'Construccion', 'ingeniera civil, aprenden sobre construccion de estrcuturas y planos'),
(6, 'Diseño Grafico', 'aprenderas a dibujar, diseñar y renderizar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `semestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `semestre`) VALUES
(1, 'Historia', 4),
(2, 'Tutoria', 4),
(3, 'Temas Matematicos 1', 4),
(4, 'Reacciones Quimicas', 4),
(5, 'Ciencias Sociales 3', 4),
(6, 'Ingles IV', 4),
(7, 'BD Relacionales', 4),
(8, 'BD No Relacionales', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
