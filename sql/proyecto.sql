-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-09-2022 a las 19:45:42
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE `autores` (
  `ID_Autor` int(11) NOT NULL,
  `Nombre_autor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`ID_Autor`, `Nombre_autor`) VALUES
(1, 'Rick Riordan'),
(2, 'Samantha Shannon'),
(3, 'T. Kingfisher'),
(4, 'Ray Bradbury'),
(5, 'Julia Quinn'),
(6, 'Suzanne Collins'),
(7, 'Stephen King'),
(8, 'Andy Weir'),
(9, 'Grady Hendrix'),
(10, 'Martha Wells'),
(11, 'Casey McQuiston'),
(12, 'Ali Hazelwood'),
(13, 'James S.A. Corey');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `club_de_lectura`
--

CREATE TABLE `club_de_lectura` (
  `ID_Club` int(11) NOT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `Nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `club_de_lectura`
--

INSERT INTO `club_de_lectura` (`ID_Club`, `fecha_creacion`, `Nombre`) VALUES
(1, '2022-08-30', 'Thriller feelers'),
(2, '2022-08-30', 'Fantasy fans'),
(3, '2022-08-30', 'SciFi club'),
(4, '2022-03-24', 'Amor a primera vista');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario_resenia`
--

CREATE TABLE `comentario_resenia` (
  `ID_Resenia` int(11) NOT NULL,
  `Comentario` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comentario_resenia`
--

INSERT INTO `comentario_resenia` (`ID_Resenia`, `Comentario`) VALUES
(1, 'Que talento para las palabras'),
(2, 'Me encantó tu resenia!!!');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos_usuario`
--

CREATE TABLE `contactos_usuario` (
  `ID_Usuario_1` int(11) NOT NULL,
  `ID_Usuario_2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contactos_usuario`
--

INSERT INTO `contactos_usuario` (`ID_Usuario_1`, `ID_Usuario_2`) VALUES
(4, 2),
(5, 7),
(6, 2),
(6, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escriben`
--

CREATE TABLE `escriben` (
  `ID_Autor` int(11) NOT NULL,
  `ISBN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `escriben`
--

INSERT INTO `escriben` (`ID_Autor`, `ISBN`) VALUES
(6, '0439023483'),
(7, '0450040186'),
(7, '0450411435'),
(8, '0593135202'),
(9, '059320123X'),
(10, '0765397536'),
(11, '1250244498'),
(2, '1620401398'),
(2, '1635570298'),
(3, '2147483647'),
(1, '786838655'),
(12, '8418945184'),
(4, '8445073990'),
(13, '8466660151'),
(5, '8492516119');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forman`
--

CREATE TABLE `forman` (
  `ID_Usuario` int(11) NOT NULL,
  `ID_Club` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `forman`
--

INSERT INTO `forman` (`ID_Usuario`, `ID_Club`) VALUES
(1, 1),
(4, 1),
(5, 1),
(2, 2),
(3, 2),
(6, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_club`
--

CREATE TABLE `historial_club` (
  `ID_Club` int(11) DEFAULT NULL,
  `ISBN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `historial_club`
--

INSERT INTO `historial_club` (`ID_Club`, `ISBN`) VALUES
(1, '0450411435'),
(1, '2147483647'),
(2, '1635570298'),
(2, '786838655'),
(3, '0593135202'),
(3, '8445073990'),
(4, '1250244498'),
(4, '8492516119');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_usuarios`
--

CREATE TABLE `historial_usuarios` (
  `ISBN` varchar(50) NOT NULL,
  `ID_Usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `historial_usuarios`
--

INSERT INTO `historial_usuarios` (`ISBN`, `ID_Usuario`) VALUES
('8466660151', 1),
('1635570298', 2),
('1250244498', 3),
('1620401398', 4),
('8445073990', 4),
('2147483647', 5),
('0439023483', 6),
('059320123X', 6),
('0765397536', 6),
('8418945184', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `ID_Multimedia` int(11) NOT NULL,
  `desarrollador` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`ID_Multimedia`, `desarrollador`) VALUES
(2, 'Valve'),
(3, 'From Software');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `ISBN` varchar(50) NOT NULL DEFAULT '',
  `Nombre` varchar(100) DEFAULT NULL,
  `Genero` varchar(100) DEFAULT NULL,
  `Sinopsis` varchar(1000) DEFAULT NULL,
  `Tipo` varchar(50) DEFAULT NULL,
  `Fecha_publicacion` date DEFAULT NULL,
  `Idioma` varchar(50) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`ISBN`, `Nombre`, `Genero`, `Sinopsis`, `Tipo`, `Fecha_publicacion`, `Idioma`, `link`) VALUES
('0439023483', 'Los juegos del hambre', 'Ciencia ficción', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2008-09-14', 'Español', NULL),
('0450040186', 'The shining', 'Terror', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '1977-01-28', 'Inglés', NULL),
('0450411435', 'It', 'Terror', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '1987-10-01', 'Inglés', NULL),
('0593135202', 'Proyecto hail mary', 'Ciencia ficción', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2021-05-04', 'Español', NULL),
('059320123X', 'The final girl support group', 'Terror', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2021-07-13', 'Inglés', NULL),
('0765397536', 'All systems red', 'Ciencia ficción', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2017-05-02', 'Inglés', NULL),
('1250244498', 'One last stop', 'Romance', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2021-06-01', 'Inglés', NULL),
('1501139231', 'The seven husbands of evelyn hugo', 'Ficcion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2017-06-13', 'Inglés', ''),
('1620401398', 'The bone season', 'Fantasia', 'The year is 2059. Nineteen-year-old Paige Mahoney is working in the criminal underworld of Scion London, based at Seven Dials, employed by a man named Jaxon Hall. Her job: to scout for information by breaking into people’s minds. For Paige is a dreamwalker, a clairvoyant and, in the world of Scion, ', 'Fisico y digital', '2013-08-20', 'Ingles', NULL),
('1635570298', 'El priorato del naranjo', 'Fantasia', 'La Casa de Berethnet ha gobernado Inys durante mil años. Aún sin casar, la reina Sabran IX debe concebir una hija para proteger a su reino de la destrucción. Pero los asesinos cada vez están más cerca. Ead Duryan es una intrusa en la corte. A pesar de que se ha posicionado como dama de compañía, es ', 'Digital', '2019-02-26', 'Español', NULL),
('2147483647', 'What moves the dead', 'Terror', 'When Alex Easton, a retired soldier, receives word that their childhood friend Madeline Usher is dying, they race to the ancestral home of the Ushers in the remote countryside of Ruritania. What they find there is a nightmare of fungal growths and possessed wildlife, surrounding a dark, pulsing lake', 'Digital', '2022-07-12', 'Ingles', NULL),
('786838655', 'Percy Jackson y el ladrón del rayo', 'Fantasia', '¿Qué pasaría si un día descubrieras que, en realidad, eres hijo de un dios griego que debe cumplir una misión secreta? Pues eso es lo que le sucede a Percy Jackson, que a partir de ese momento se dispone a vivir los acontecimientos más emocionantes de su vida. Expulsado de seis colegios, Percy padec', 'Digital', '2006-03-01', 'Español', NULL),
('8418945184', 'La hipótesis del amor', 'Romance', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2021-09-14', 'Español', NULL),
('8445073990', 'El hombre ilustrado', 'Ciencia ficción', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '1951-02-01', 'Español', NULL),
('8466660151', 'El despertar del leviatán', 'Ciencia ficción', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2011-06-02', 'Español', NULL),
('8492516119', 'El duque y yo', 'Romance', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2000-01-05', 'Español', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multas`
--

CREATE TABLE `multas` (
  `ID_Multas` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `cant_dias` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `multas`
--

INSERT INTO `multas` (`ID_Multas`, `fecha`, `cant_dias`) VALUES
(1, '2022-08-24', 30),
(2, '2022-09-02', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multimedia`
--

CREATE TABLE `multimedia` (
  `ID_Multimedia` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `fecha_publicacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `multimedia`
--

INSERT INTO `multimedia` (`ID_Multimedia`, `Nombre`, `Descripcion`, `fecha_publicacion`) VALUES
(1, 'Everything, everywhere, all at once', 'A Chinese immigrant gets involved in a crazy adventure, where she alone can save the world by explor', '2022-03-25'),
(2, 'Portal', 'Portal consists primarily of a series of puzzles that must be solved by teleporting the player\'s cha', '2007-08-10'),
(3, 'Dark souls', 'Dark Souls tiene lugar en el reino ficticio de Lordran. Los jugadores toman el papel de un personaje', '2016-03-24'),
(4, 'Pulp fiction', 'Cuenta la vida de dos asesinos de la mafia, un boxeador y un pandillero y su esposa, y un par de ban', '1995-03-31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `ID_Multimedia` int(11) NOT NULL,
  `director` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`ID_Multimedia`, `director`) VALUES
(1, ' Dan Kwan, Daniel Scheinert'),
(4, 'Quetin Tarantino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `poseen`
--

CREATE TABLE `poseen` (
  `ISBN` varchar(50) NOT NULL,
  `ID_Multas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `ISBN` varchar(50) NOT NULL,
  `ID_Usuario` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  `Cant_dias` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`ISBN`, `ID_Usuario`, `fecha`, `tipo`, `Cant_dias`) VALUES
('1620401398', 6, '2022-09-06', 'Digital', 30),
('2147483647', 1, '2022-07-18', 'Digital', 30),
('786838655', 7, '2021-07-12', 'Digital', 30),
('8445073990', 4, '2022-09-06', 'Digital', 30),
('8492516119', 5, '2022-02-16', 'Digital', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reciben`
--

CREATE TABLE `reciben` (
  `ID_Multas` int(11) NOT NULL,
  `ID_Usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reciben`
--

INSERT INTO `reciben` (`ID_Multas`, `ID_Usuario`) VALUES
(1, 3),
(2, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resenias`
--

CREATE TABLE `resenias` (
  `ID_Resenia` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `Puntaje` int(1) DEFAULT NULL,
  `Opinion` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `resenias`
--

INSERT INTO `resenias` (`ID_Resenia`, `fecha`, `Puntaje`, `Opinion`) VALUES
(1, '2022-09-02', 4, 'Tremendo'),
(2, '2022-05-02', 4, 'Fantastico, me atrapo muchisimo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiene`
--

CREATE TABLE `tiene` (
  `ID_Resenias` int(11) NOT NULL,
  `ISBN` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tiene`
--

INSERT INTO `tiene` (`ID_Resenias`, `ISBN`) VALUES
(1, '786838655'),
(2, '8492516119');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_Usuario` int(11) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Apellido` varchar(100) DEFAULT NULL,
  `Clave` varchar(100) DEFAULT NULL,
  `Telefono` int(11) DEFAULT NULL,
  `Mail` varchar(100) DEFAULT NULL,
  `Nacimiento` date DEFAULT NULL,
  `Administrador` int(11) DEFAULT NULL,
  `Grado` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID_Usuario`, `Nombre`, `Apellido`, `Clave`, `Telefono`, `Mail`, `Nacimiento`, `Administrador`, `Grado`) VALUES
(1, 'Pedro', 'Picapiedra', 'ola', 987654321, 'holahola@gmail.com', '2000-06-16', 0, 2),
(2, 'Pedro', 'Artimañas', '$2y$10$K/t0nRW2MfWVFP0BDpvMa.KltcI9U9wIPkw.tC4miFM2iCMrR4iJm', 987654321, 'roberber@gmail.com', NULL, 0, 5),
(3, 'Roberto', 'Berto', '$2y$10$3oNfYN/7w5V4TjlsennEs.SvOlPcFGN/YzryyOJzPMApgQIF8.ZsW', 99433251, 'robertoberto@gmail.com', NULL, 1, 0),
(4, 'Jota', 'Jota', '$2y$10$4sCHsbE3P4SLAnjapODJcuJA/Sz7bOV9brPvSgWpcNd85h3fzwdU2', 9876543, 'jota@gmail.com', NULL, 0, 3),
(5, 'Inés', 'Alfonces', '$2y$10$xlP6nocGlbO9SQCREEKjzuruSNwFvK6HDqdAXav9so.ESCiZ3JhUy', 98567123, 'inalfon@gmail.com', NULL, 0, 3),
(6, 'Juan', 'Mira', '$2y$10$JtdG/ba9qRMgPAKglpeBiO3NtGjkFzNcIxpgildznHJF9LeRVRn1C', 98564163, 'juanmira@gmail.com', NULL, 0, 3),
(7, 'Pedro', 'Perez', '$2y$10$E9fh01JZISHb0BDgH.vZwub2oJ.EbCjuLwXnhABPY7AQwHhczeiM.', 99427634, 'pepe@gmail.com', NULL, 0, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`ID_Autor`);

--
-- Indices de la tabla `club_de_lectura`
--
ALTER TABLE `club_de_lectura`
  ADD PRIMARY KEY (`ID_Club`);

--
-- Indices de la tabla `comentario_resenia`
--
ALTER TABLE `comentario_resenia`
  ADD PRIMARY KEY (`ID_Resenia`);

--
-- Indices de la tabla `contactos_usuario`
--
ALTER TABLE `contactos_usuario`
  ADD PRIMARY KEY (`ID_Usuario_1`,`ID_Usuario_2`),
  ADD KEY `ID_Usuario_2` (`ID_Usuario_2`);

--
-- Indices de la tabla `escriben`
--
ALTER TABLE `escriben`
  ADD PRIMARY KEY (`ISBN`,`ID_Autor`),
  ADD KEY `ID_Autor` (`ID_Autor`);

--
-- Indices de la tabla `forman`
--
ALTER TABLE `forman`
  ADD PRIMARY KEY (`ID_Usuario`),
  ADD KEY `ID_Club` (`ID_Club`);

--
-- Indices de la tabla `historial_club`
--
ALTER TABLE `historial_club`
  ADD PRIMARY KEY (`ISBN`),
  ADD KEY `ID_Club` (`ID_Club`);

--
-- Indices de la tabla `historial_usuarios`
--
ALTER TABLE `historial_usuarios`
  ADD PRIMARY KEY (`ISBN`),
  ADD KEY `ID_Usuario` (`ID_Usuario`);

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`ID_Multimedia`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`ISBN`);

--
-- Indices de la tabla `multas`
--
ALTER TABLE `multas`
  ADD PRIMARY KEY (`ID_Multas`);

--
-- Indices de la tabla `multimedia`
--
ALTER TABLE `multimedia`
  ADD PRIMARY KEY (`ID_Multimedia`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`ID_Multimedia`);

--
-- Indices de la tabla `poseen`
--
ALTER TABLE `poseen`
  ADD PRIMARY KEY (`ISBN`,`ID_Multas`),
  ADD KEY `ID_Multas` (`ID_Multas`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`ISBN`,`ID_Usuario`),
  ADD KEY `ID_Usuario` (`ID_Usuario`);

--
-- Indices de la tabla `reciben`
--
ALTER TABLE `reciben`
  ADD PRIMARY KEY (`ID_Multas`),
  ADD KEY `ID_Usuario` (`ID_Usuario`);

--
-- Indices de la tabla `resenias`
--
ALTER TABLE `resenias`
  ADD PRIMARY KEY (`ID_Resenia`);

--
-- Indices de la tabla `tiene`
--
ALTER TABLE `tiene`
  ADD PRIMARY KEY (`ID_Resenias`),
  ADD KEY `ISBN` (`ISBN`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autores`
--
ALTER TABLE `autores`
  MODIFY `ID_Autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `club_de_lectura`
--
ALTER TABLE `club_de_lectura`
  MODIFY `ID_Club` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `multas`
--
ALTER TABLE `multas`
  MODIFY `ID_Multas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentario_resenia`
--
ALTER TABLE `comentario_resenia`
  ADD CONSTRAINT `comentario_resenia_ibfk_1` FOREIGN KEY (`ID_Resenia`) REFERENCES `resenias` (`ID_Resenia`);

--
-- Filtros para la tabla `contactos_usuario`
--
ALTER TABLE `contactos_usuario`
  ADD CONSTRAINT `contactos_usuario_ibfk_1` FOREIGN KEY (`ID_Usuario_1`) REFERENCES `usuarios` (`ID_Usuario`),
  ADD CONSTRAINT `contactos_usuario_ibfk_2` FOREIGN KEY (`ID_Usuario_2`) REFERENCES `usuarios` (`ID_Usuario`);

--
-- Filtros para la tabla `escriben`
--
ALTER TABLE `escriben`
  ADD CONSTRAINT `escriben_ibfk_1` FOREIGN KEY (`ISBN`) REFERENCES `libros` (`ISBN`),
  ADD CONSTRAINT `escriben_ibfk_2` FOREIGN KEY (`ID_Autor`) REFERENCES `autores` (`ID_Autor`);

--
-- Filtros para la tabla `forman`
--
ALTER TABLE `forman`
  ADD CONSTRAINT `forman_ibfk_1` FOREIGN KEY (`ID_Club`) REFERENCES `club_de_lectura` (`ID_Club`),
  ADD CONSTRAINT `forman_ibfk_2` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuarios` (`ID_Usuario`);

--
-- Filtros para la tabla `historial_club`
--
ALTER TABLE `historial_club`
  ADD CONSTRAINT `historial_club_ibfk_1` FOREIGN KEY (`ID_Club`) REFERENCES `club_de_lectura` (`ID_Club`),
  ADD CONSTRAINT `historial_club_ibfk_2` FOREIGN KEY (`ISBN`) REFERENCES `libros` (`ISBN`);

--
-- Filtros para la tabla `historial_usuarios`
--
ALTER TABLE `historial_usuarios`
  ADD CONSTRAINT `historial_usuarios_ibfk_1` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuarios` (`ID_Usuario`),
  ADD CONSTRAINT `historial_usuarios_ibfk_2` FOREIGN KEY (`ISBN`) REFERENCES `libros` (`ISBN`);

--
-- Filtros para la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD CONSTRAINT `juegos_ibfk_1` FOREIGN KEY (`ID_Multimedia`) REFERENCES `multimedia` (`ID_Multimedia`);

--
-- Filtros para la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD CONSTRAINT `peliculas_ibfk_1` FOREIGN KEY (`ID_Multimedia`) REFERENCES `multimedia` (`ID_Multimedia`);

--
-- Filtros para la tabla `poseen`
--
ALTER TABLE `poseen`
  ADD CONSTRAINT `poseen_ibfk_1` FOREIGN KEY (`ISBN`) REFERENCES `libros` (`ISBN`),
  ADD CONSTRAINT `poseen_ibfk_2` FOREIGN KEY (`ID_Multas`) REFERENCES `multas` (`ID_Multas`);

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`ISBN`) REFERENCES `libros` (`ISBN`),
  ADD CONSTRAINT `prestamos_ibfk_2` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuarios` (`ID_Usuario`);

--
-- Filtros para la tabla `reciben`
--
ALTER TABLE `reciben`
  ADD CONSTRAINT `reciben_ibfk_1` FOREIGN KEY (`ID_Multas`) REFERENCES `multas` (`ID_Multas`),
  ADD CONSTRAINT `reciben_ibfk_2` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuarios` (`ID_Usuario`);

--
-- Filtros para la tabla `tiene`
--
ALTER TABLE `tiene`
  ADD CONSTRAINT `tiene_ibfk_1` FOREIGN KEY (`ISBN`) REFERENCES `libros` (`ISBN`),
  ADD CONSTRAINT `tiene_ibfk_2` FOREIGN KEY (`ID_Resenias`) REFERENCES `resenias` (`ID_Resenia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
