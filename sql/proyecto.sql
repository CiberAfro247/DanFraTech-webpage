-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2022 a las 14:34:06
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

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_libro` (IN `lib` VARCHAR(50))   BEGIN
	SELECT *
	FROM libros 
	WHERE libros.Nombre LIKE CONCAT(lib, '%');
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usuarios_clubs` (IN `club` VARCHAR(100))   BEGIN
	SELECT usuarios.Nombre, libros.Nombre AS Ultimo_libro_pedido
	FROM usuarios, club_de_lectura, libros, prestamos, forman
	WHERE libros.ISBN = prestamos.ISBN
	AND prestamos.ID_Usuario = usuarios.ID_Usuario
	AND usuarios.ID_Usuario = forman.ID_Usuario
	AND forman.ID_Club = club_de_lectura.ID_Club
	AND club_de_lectura.Nombre LIKE CONCAT(club, '%');
END$$

DELIMITER ;

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
(13, 'James S.A. Corey'),
(14, 'Brandon Sanderson'),
(15, 'Robin Hobb'),
(16, 'Andrew Rowe'),
(17, 'Cristopher Paolini'),
(18, 'Tamsyn Muir'),
(19, 'Cassandra Clare'),
(20, 'John Gwynnw'),
(21, 'Mark Lawrence'),
(22, 'Jay Cristoff'),
(23, 'Anna Todd'),
(24, 'Joana Marcus'),
(25, 'John Green'),
(26, 'Elisabet Benavet'),
(27, 'Emily Henry'),
(28, 'Charlie N. Holmberg'),
(29, 'Colleen Hoover'),
(30, 'Satah J. Maas'),
(31, 'Casey Macquiston'),
(32, 'Silvia Moreno-Garcia'),
(33, 'Hiron Ennes'),
(34, 'Camilla Bruce'),
(35, 'Catherine Bruce'),
(36, 'Lucinda Berry'),
(37, 'Claudia Lux'),
(38, 'Shirley Jackson'),
(39, 'Bram Stocker'),
(40, 'Orson Scott Card'),
(41, 'Frank Herbert'),
(42, 'George Orwell'),
(43, 'Ray Bradbury'),
(44, 'Aldous Huxley '),
(45, 'Isaac Asimov'),
(46, 'Douglas Adams');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `club_de_lectura`
--

CREATE TABLE `club_de_lectura` (
  `ID_Club` int(11) NOT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Descripcion` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `club_de_lectura`
--

INSERT INTO `club_de_lectura` (`ID_Club`, `fecha_creacion`, `Nombre`, `Descripcion`) VALUES
(1, '2022-08-30', 'Thriller feelers', 'Club de lectura para leer los libros mas thriller entre los thriller'),
(2, '2022-08-30', 'Fantasy fans', 'Aca se leen solo libros de fantasia, lo dice el nombre, si no lo podes leer no entres'),
(3, '2022-08-30', 'SciFi club', 'Libros que te llevan al espacio y al futuro con la ciencia ficcion más pura'),
(4, '2022-03-24', 'Amor a primera vista', 'Que el romance en estas páginas llene tu vacío corazón'),
(5, '2022-11-10', 'Misterioso', 'Suoer misterioso, misteriosos');

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
(43, '0007491565 '),
(44, '0060929871 '),
(38, '0143039989 '),
(20, '0230758452 '),
(17, '0375826696 '),
(39, '0393970124 '),
(6, '0439023483'),
(7, '0450040186'),
(7, '0450411435'),
(42, '0452284236 '),
(32, '0525620788'),
(45, '0553803719 '),
(41, '059309932X '),
(8, '0593135202'),
(9, '059320123X'),
(27, '0593440870'),
(37, '0593545761 '),
(10, '0765397536'),
(40, '0812550706 '),
(21, '1101988851 '),
(31, '1250244455 '),
(11, '1250244498'),
(22, '1250245281 '),
(3, '1250302099 '),
(34, '1250302099 '),
(33, '125081118X '),
(46, '1400052920 '),
(23, '1476792488'),
(36, '1503905128 '),
(16, '1505886554 '),
(29, '1542025605 '),
(2, '1620401398'),
(2, '1635570298'),
(35, '1645676129 '),
(3, '2147483647'),
(15, '6073123582 '),
(1, '786838655'),
(25, '8415594011 '),
(28, '8416224277 '),
(18, '8417347976 '),
(12, '8418945184'),
(4, '8445073990'),
(14, '8466658874 '),
(13, '8466660151'),
(26, '8491290141 '),
(5, '8492516119'),
(30, '9504948626'),
(19, '9507321276 '),
(24, '9874924977 ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forman`
--

CREATE TABLE `forman` (
  `ID_Usuario` int(11) NOT NULL,
  `ID_Club` int(11) NOT NULL,
  `creador` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `forman`
--

INSERT INTO `forman` (`ID_Usuario`, `ID_Club`, `creador`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 2, 0),
(4, 1, 0),
(5, 1, 0),
(6, 3, 1);

--
-- Disparadores `forman`
--
DELIMITER $$
CREATE TRIGGER `un_club` AFTER INSERT ON `forman` FOR EACH ROW BEGIN
	DECLARE a INT;
	
	SELECT COUNT(forman.creador) INTO a
	FROM forman
	WHERE forman.ID_Club = NEW.ID_Club;
	
	IF a > 1 THEN
		DELETE FROM forman WHERE forman.ID_Club = NEW.ID_Club;
		DELETE FROM club_de_lectura WHERE club_de_lectura.ID_Club = NEW.ID_Club;
	END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `fullmulta`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `fullmulta` (
`ID_Usuario` int(11)
,`Usuario` varchar(201)
,`ID_Multas` int(11)
,`fecha` date
,`cant_dias` int(11)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_club`
--

CREATE TABLE `historial_club` (
  `ID_Club` int(11) DEFAULT NULL,
  `ISBN` varchar(50) NOT NULL,
  `fecha_comienzo` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `historial_club`
--

INSERT INTO `historial_club` (`ID_Club`, `ISBN`, `fecha_comienzo`, `fecha_fin`) VALUES
(1, '0450411435', '2022-06-01', '2022-06-14'),
(3, '0593135202', '2022-09-15', '2022-09-24'),
(4, '1250244498', '2022-03-20', '2022-03-29'),
(1, '1620401398', '2022-11-05', NULL),
(2, '1635570298', '2022-07-08', '2022-07-16'),
(2, '786838655', '2022-11-05', NULL),
(3, '8445073990', '2022-11-05', NULL),
(4, '8492516119', '2022-11-05', NULL);

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
-- Estructura Stand-in para la vista `info_libro`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `info_libro` (
`Nombre` varchar(100)
,`Nombre_autor` varchar(100)
,`Genero` varchar(100)
,`Tipo` varchar(50)
,`Idioma` varchar(50)
);

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
  `Sinopsis` varchar(10000) DEFAULT NULL,
  `Tipo` varchar(50) DEFAULT NULL,
  `Fecha_publicacion` date DEFAULT NULL,
  `Idioma` varchar(50) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `Imagen` varchar(50) DEFAULT NULL,
  `Puntaje_total` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`ISBN`, `Nombre`, `Genero`, `Sinopsis`, `Tipo`, `Fecha_publicacion`, `Idioma`, `link`, `Imagen`, `Puntaje_total`) VALUES
('0007491565 ', 'Fahrenheit 451', 'Ciencia ficción', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '1953-10-19', 'Inglés', NULL, '../Imagenes/Ciencia_ficcion/451.jpg', 4),
('0060929871 ', 'Brave new world', 'Ciencia ficción', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '1932-01-01', 'Inglés', NULL, '../Imagenes/Ciencia_ficcion/brave.jpg', 3),
('0143039989 ', 'The haunting of Hill House', 'Terror', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2006-10-16', 'Inglés', NULL, '../Imagenes/Terror/haunting.jpg', 5),
('0230758452 ', 'Malice', 'Fantasia', 'A black sun is rising …\r\n\r\nYoung Corban watches enviously as boys become warriors under King Brenin’s rule, learning the art of war. He yearns to wield his sword and spear to protect his king’s realm. But that day will come all too soon. Only when he loses those he loves will he learn the true price of courage.\r\n\r\nThe Banished Lands has a violent past where armies of men and giants clashed shields in battle, the earth running dark with their heartsblood. Although the giant-clans were broken in ages past, their ruined fortresses still scar the land. But now giants stir anew, the very stones weep blood and there are sightings of giant wyrms. Those who can still read the signs see a threat far greater than the ancient wars. Sorrow will darken the world, as angels and demons make it their battlefield. Then there will be a war to end all wars.\r\n\r\nHigh King Aquilus summons his fellow kings to council, seeking an alliance in this time of need. Some are skeptical, fighting their own border ski', 'Digital', '2012-12-01', 'Inglés', NULL, '../Imagenes/Fantasia/malice.jpg', 3),
('0375826696 ', 'Eragon', 'Fantasia', 'When Eragon finds a polished blue stone in the forest, he thinks it is the lucky discovery of a poor farm boy; perhaps it will buy his family meat for the winter. But when the stone brings a dragon hatchling, Eragon soon realizes he has stumbled upon a legacy nearly as old as the Empire itself.\r\n\r\nOvernight his simple life is shattered, and he is thrust into a perilous new world of destiny, magic, and power. With only an ancient sword and the advice of an old storyteller for guidance, Eragon and the fledgling dragon must navigate the dangerous terrain and dark enemies of an Empire ruled by a king whose evil knows no bounds.\r\n\r\nCan Eragon take up the mantle of the legendary Dragon Riders? The fate of the Empire may rest in his hands.', 'Digital', '2002-06-01', 'Español', NULL, '../Imagenes/Fantasia/eragon.jpg', 4),
('0393970124 ', 'Dracula', 'Terror', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '1986-05-12', 'Inglés', NULL, '../Imagenes/Terror/dracula.jpg', 3),
('0439023483', 'Los juegos del hambre', 'Ciencia ficción', 'Un pasado de guerras ha dejado los 12 distritos que dividen Panem bajo el poder tiránico del “Capitolio”. Sin libertad y en la pobreza, nadie puede salir de los límites de su distrito.\r\nSólo una chica de 16 años, Katniss Everdeen, osa desafiar las normas para conseguir comida. Sus principios se pondrán a prueba con “Los juegos del hambre”, espectáculo televisado que el Capitolio organiza para humillar a la población. Cada año, 2 representantes de cada distrito serán obligados a subsistir en un medio hostil y luchar a muerte entre ellos hasta que quede un solo superviviente. Cuando su hermana pequeña es elegida para participar, Katniss no duda en ocupar su lugar, decidida a demostrar con su actitud firme y decidida, que aún en las situaciones más desesperadas hay lugar para el amor y el respeto.', 'Digital', '2008-09-14', 'Español', '', '../Imagenes/Ciencia_ficcion/juegos_hambre.jpg', 4),
('0450040186', 'The shining', 'Terror', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '1977-01-28', 'Inglés', '', '../Imagenes/Terror/shining.jpg', 4),
('0450411435', 'It', 'Terror', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '1987-10-01', 'Inglés', '', '../Imagenes/Terror/it.jpg', 5),
('0452284236 ', '1984', 'Ciencia ficción', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '1949-01-01', 'Inglés', NULL, '../Imagenes/Ciencia_ficcion/1984.jpg', 4),
('0525620788', 'Mexican Gothic', 'Terror', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2020-06-30', 'Inglés', NULL, '../Imagenes/Terror/gothic.jpg', 4),
('0553803719 ', 'Foundation', 'Ciencia ficción', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '1951-08-30', 'Inglés', NULL, '../Imagenes/Ciencia_ficcion/foundation.jpg', 4),
('059309932X ', 'Dune', 'Ciencia ficción', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '1965-06-01', 'Inglés', NULL, '../Imagenes/Ciencia_ficcion/dune.jpg', 4),
('0593135202', 'Proyecto hail mary', 'Ciencia ficción', 'Ryland Grace es el único superviviente en una misión desesperada. Es la última oportunidad y, si fracasa, la humanidad y la Tierra misma perecerán. Claro que, de momento, él no lo sabe. Ni siquiera puede recordar su propio nombre, y mucho menos la naturaleza de su misión o cómo llevarla a cabo. Lo único que sabe es que ha estado en como inducido durante mucho tiempo. Acaba de despertar y se encuentra a millones de kilómetros de su hogar, sin más compañía que la de dos cadáveres. Muertos sus compañeros de tripulación, y a medida que va recuperando confusamente los recuerdos, Grace se da cuenta de que se enfrenta a una misión imposible. Recorriendo el espacio en una pequeña nave, depende de él acabar con una amenaza de extinción para nuestra especie. Sin apenas tiempo y con el ser humano más cercano a años luz de distancia, habrá que conseguirlo estándo completamente solo. ¿O no?', 'Digital', '2021-05-04', 'Español', '', '../Imagenes/Ciencia_ficcion/hail_mary.jpg', 3),
('059320123X', 'The final girl support group', 'Terror', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2021-07-13', 'Inglés', '', '../Imagenes/Terror/support.jpg', 3),
('0593440870', 'Book lovers', 'Romance', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2022-05-03', 'Español', NULL, '../Imagenes/Romance/lovers.jpg', 4),
('0593545761 ', 'Sign here', 'Terror', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2022-10-25', 'Inglés', NULL, '../Imagenes/Terror/sign.jpg', 4),
('0765397536', 'All systems red', 'Ciencia ficción', '\"As a heartless killing machine, I was a complete failure.\"\r\n\r\nIn a corporate-dominated spacefaring future, planetary missions must be approved and supplied by the Company. Exploratory teams are accompanied by Company-supplied security androids, for their own safety.\r\n\r\nBut in a society where contracts are awarded to the lowest bidder, safety isn’t a primary concern.\r\n\r\nOn a distant planet, a team of scientists are conducting surface tests, shadowed by their Company-supplied ‘droid — a self-aware SecUnit that has hacked its own governor module, and refers to itself (though never out loud) as “Murderbot.” Scornful of humans, all it really wants is to be left alone long enough to figure out who it is.\r\n\r\nBut when a neighboring mission goes dark, it\'s up to the scientists and their Murderbot to get to the truth.', 'Digital', '2017-05-02', 'Inglés', '', '../Imagenes/Ciencia_ficcion/systems_red.jpg', 3),
('0812550706 ', 'Ender´s Game', 'Ciencia ficción', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '1985-01-15', 'Inglés', NULL, '../Imagenes/Ciencia_ficcion/ender.jpg', 4),
('1101988851 ', 'Red sister', 'Fantasia', 'At the Convent of Sweet Mercy, young girls are raised to be killers. In some few children the old bloods show, gifting rare talents that can be honed to deadly or mystic effect. But even the mistresses of sword and shadow don\'t truly understand what they have purchased when Nona Grey is brought to their halls.', 'Digital', '2017-04-04', 'Inglés', NULL, '../Imagenes/Fantasia/sister.jpg', 3),
('1250244455 ', 'I kissed Shara Wheeler', 'Romance', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2022-05-03', 'Inglés', NULL, '../Imagenes/Romance/shara.jpg', 4),
('1250244498', 'One last stop', 'Romance', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2021-06-01', 'Inglés', '', '../Imagenes/Romance/stop.jpg', 2),
('1250245281 ', 'Empire of the vampire', 'Fantasia', 'It has been twenty-seven long years since the last sunrise. For nearly three decades, vampires have waged war against humanity; building their eternal empire even as they tear down our own. Now, only a few tiny sparks of light endure in a sea of darkness.\r\n\r\nGabriel de León is a silversaint: a member of a holy brotherhood dedicated to defending realm and church from the creatures of the night. But even the Silver Order could not stem the tide once daylight failed us, and now, only Gabriel remains.\r\n\r\nImprisoned by the very monsters he vowed to destroy, the last silversaint is forced to tell his story. A story of legendary battles and forbidden love, of faith lost and friendships won, of the Wars of the Blood and the Forever King and the quest for humanity’s last remaining hope:\r\n\r\nThe Holy Grail.', 'Digital', '2021-09-14', 'Inglés', NULL, '../Imagenes/Fantasia/vampire.jpg', 3),
('1250302099 ', 'The witch in the Well', 'Terror', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2022-10-04', 'Inglés', NULL, '../Imagenes/Terror/well.jpg', 3),
('125081118X ', 'Leech', 'Terror', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2022-09-27', 'Inglés', NULL, '../Imagenes/Terror/leech.jpg', 3),
('1400052920 ', 'The Hitchhiker\'s Guide to the Galaxy', 'Ciencia ficción', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '1979-10-12', 'Inglés', NULL, '../Imagenes/Ciencia_ficcion/guide.jpg', 4),
('1476792488', 'After', 'Romance', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2014-10-21', 'Español', NULL, '../Imagenes/Romance/after.jpg', 2),
('1501139231', 'The seven husbands of evelyn hugo', 'Ficcion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2017-06-13', 'Inglés', '', '../Imagenes/husband.jpg', 5),
('1503905128 ', 'The perfect child', 'Terror', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2019-03-01', 'Inglés', NULL, '../Imagenes/Terror/perfect.jpg', 3),
('1505886554 ', 'Forging Divinity', 'Fantasia', 'Some say that in the city of Orlyn, godhood is on sale to the highest bidder. Thousands flock to the city each year, hoping for a chance at immortality.', 'Digital', '2015-02-13', 'Inglés', NULL, '../Imagenes/Fantasia/divinity.jpg', 4),
('1542025605 ', 'Reminders of him', 'Romance', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2022-01-18', 'Inglés', NULL, '../Imagenes/Romance/reminders.jpg', 3),
('1620401398', 'The bone season', 'Fantasia', 'The year is 2059. Nineteen-year-old Paige Mahoney is working in the criminal underworld of Scion London, based at Seven Dials, employed by a man named Jaxon Hall. Her job: to scout for information by breaking into people’s minds. For Paige is a dreamwalker, a clairvoyant and, in the world of Scion, ', 'Fisico y digital', '2013-08-20', 'Ingles', '', '../Imagenes/Fantasia/bone_season.jpg', 3),
('1635570298', 'El priorato del naranjo', 'Fantasia', 'La Casa de Berethnet ha gobernado Inys durante mil años. Aún sin casar, la reina Sabran IX debe concebir una hija para proteger a su reino de la destrucción. Pero los asesinos cada vez están más cerca. Ead Duryan es una intrusa en la corte. A pesar de que se ha posicionado como dama de compañía, es ', 'Digital', '2019-02-26', 'Español', '', '../Imagenes/Fantasia/naranjo.jpg', 5),
('1645676129 ', 'Direwood', 'Terror', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2022-09-20', 'Inglés', NULL, '../Imagenes/Terror/direwood.jpg', 3),
('2147483647', 'What moves the dead', 'Terror', 'When Alex Easton, a retired soldier, receives word that their childhood friend Madeline Usher is dying, they race to the ancestral home of the Ushers in the remote countryside of Ruritania. What they find there is a nightmare of fungal growths and possessed wildlife, surrounding a dark, pulsing lake', 'Digital', '2022-07-12', 'Inglés', '', '../Imagenes/Terror/moves_dead.jpg', 3),
('6073123582 ', 'Aprendiz de asesino', 'Fantasia', 'Traspié, hijo bastardo del noble príncipe Hidalgo, es heredero al trono de los Seis Ducados. Después de ser rechazado por su familia es llevado a la corte real, donde crece bajo la tutela del arisco caballerizo de su padre. Todos los miembros de la realeza lo consideran un paria, salvo el taimado rey Artimañas -su abuelo-, quien busca que sea instruido en las artes del asesinato, ya que por sus venas corre la sangre de una Habilidad mágica.', 'Digital', '1995-05-01', 'Español', NULL, '../Imagenes/Fantasia/aprendiz.jpg', 4),
('786838655', 'Percy Jackson y el ladrón del rayo', 'Fantasia', '¿Qué pasaría si un día descubrieras que, en realidad, eres hijo de un dios griego que debe cumplir una misión secreta? Pues eso es lo que le sucede a Percy Jackson, que a partir de ese momento se dispone a vivir los acontecimientos más emocionantes de su vida. Expulsado de seis colegios, Percy padec', 'Digital', '2006-03-01', 'Español', '', '../Imagenes/Fantasia/ladron_rayo.png', 5),
('8415594011 ', 'Bajo la misma estrella', 'Romance', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2012-01-10', 'Español', NULL, '../Imagenes/Romance/estrella.jpg', 3),
('8416224277 ', 'El mago de papel', 'Romance', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2014-09-01', 'Español', NULL, '../Imagenes/Romance/papel.jpg', 4),
('8417347976 ', 'Gideon la novena', 'Fantasia', 'El Emperador necesita nigromantes. La nigromante de la Novena necesita una espadachina. Gideon tiene una espada, unas revistas guarras y ninguna paciencia para tonterías con los muertos vivientes.', 'Digital', '2019-09-10', 'Español', NULL, '../Imagenes/Fantasia/gideon.jpg', 4),
('8418945184', 'La hipótesis del amor', 'Romance', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2021-09-14', 'Español', '', '../Imagenes/Romance/hipotesis.jpg', 2),
('8445073990', 'El hombre ilustrado', 'Ciencia ficción', 'En esta colección de historias entrelazadas, el narrador anónimo conoce a El Hombre Ilustrado, un curioso personaje con el cuerpo completamente cubierto de tatuajes. Sin embargo, lo más remarcable e inquietante es que las ilustraciones están mágicamente vivas y cada una de ellas empieza a desarrollar su propia historia, como en La pradera donde unos niños llegan un juego de realidad virtual más allá de sus límites. O en «Calidoscopio», el sobrecogedor relato de un astronauta que se dispone a reentrar en la atmósfera terrestre sin la protección de una nave espacial. O en La hora cero, en el que los invasores extraterrestres han encontrado unos aliados lógicos y sorprendentes: los niños humanos.', 'Digital', '1951-02-01', 'Español', '', '../Imagenes/Ciencia_ficcion/hombre_ilustrado.jpg', 2),
('8466658874 ', 'El aliento de los dioses', 'Fantasia', 'Hace años, el monarca de Idris firmó un tratado con el reino de Hallandren según el cual el rey Dedelin enviaría a su hija mayor, Vivenna, para casarse con Susebron, el rey-dios de Hallabdren. Vivenna ha sido adiestrada durante toda su vida para ser una novia adecuada para Susebron y así cumplir con su deber y ayudar a forjar una paz estable entre los dos reinos. Ese era el plan, pero el monarca de Idris envía a su hija Siri, desobediente e independiente, en lugar de Vivenna. Mientras intenta encontrar su lugar en la corte de Susebron, Siri descubre la verdad oculta sobre el rey-dios. En Idris, Vivenna se siente intranquila y teme que su hermana no esté preparada para esa nueva vida, por lo que decide viajar a Hallandren. Allí se reúne con la gente de Idris que trabaja en la capital, T’Telir, y comienza una nueva vida de espionaje y sabotaje. El plan de Vivenna es rescatar a Siri, aunque tal vez esta no necesite ni desee ser salvada.', 'Digital', '2009-09-06', 'Español', NULL, '../Imagenes/Fantasia/aliento.jpg', 5),
('8466660151', 'El despertar del leviatán', 'Ciencia ficción', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2011-06-02', 'Español', '', '../Imagenes/Ciencia_ficcion/despertar_leviatan.jpg', 4),
('8491290141 ', 'Mi isla', 'Romance', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2016-06-01', 'Español', NULL, '../Imagenes/Romance/isla.jpg', 2),
('8492516119', 'El duque y yo', 'Romance', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2000-01-05', 'Español', '', '../Imagenes/Romance/duque.jpg', 4),
('9504948626', 'Una corte de rosas y espinas', 'Romance', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2015-05-05', 'Español', NULL, '../Imagenes/Romance/rosas.jpg', 2),
('9507321276 ', 'Ciudad de hueso', 'Fantasia', 'En el Pandemonium, la discoteca de moda de Nueva York, Clary sigue a un atractivo chico de pelo azul hasta que presencia su muer te a manos de tres jóvenes cubiertos de extraños tatuajes. Desde esa noche, su destino se une al de esos tres cazadores de sombras, guerreros dedicados a liberar a la tierra de demonios y, sobre todo, a combatir a Jace, un chico con aspecto de ángel y tendencia a actuar como un idiota...', 'Digital', '2007-05-27', 'Español', NULL, '../Imagenes/Fantasia/hueso.jpg', 4),
('9874924977 ', 'Antes de diciembre', 'Romance', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital', '2021-01-01', 'Español', NULL, '../Imagenes/Romance/diciembre.jpg', 3);

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
-- Estructura Stand-in para la vista `prestamo_user`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `prestamo_user` (
`Nombre` varchar(100)
,`Cantidad_libros` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `realizan`
--

CREATE TABLE `realizan` (
  `ID_Resenia` int(11) NOT NULL,
  `ID_Usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `realizan`
--

INSERT INTO `realizan` (`ID_Resenia`, `ID_Usuario`) VALUES
(2, 2),
(4, 5),
(1, 6),
(3, 7);

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
-- Estructura Stand-in para la vista `resenial`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `resenial` (
`Nombre` varchar(100)
,`Opinion` varchar(300)
);

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
(2, '2022-05-02', 4, 'Fantastico, me atrapo muchisimo'),
(3, '2022-11-09', 2, 'OMG, it\'s horrid'),
(4, '2022-11-14', 1, 'Nunca leí nada tan horrible');

--
-- Disparadores `resenias`
--
DELIMITER $$
CREATE TRIGGER `punts` AFTER INSERT ON `resenias` FOR EACH ROW BEGIN
	DECLARE book INT;
	DECLARE res INT;
	
	SELECT libros.ISBN INTO book 
	FROM libros, tiene, resenias
	WHERE tiene.ISBN = libros.ISBN
	AND tiene.ID_Resenias = resenias.ID_Resenia
	AND resenias.ID_Resenia = NEW.ID_Resenia;
	
	
	SELECT resenias.Puntaje INTO res 
	FROM resenias, tiene, libros 
	WHERE resenias.ID_Resenia = tiene.ID_Resenias 
	AND tiene.ISBN = libros.ISBN 
	AND libros.ISBN = book;
	
	UPDATE libros SET libros.Puntaje_total = AVG(res + NEW.Puntaje);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `reseniav`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `reseniav` (
`Nombre` varchar(100)
,`Opinion` varchar(300)
);

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
(3, '786838655'),
(4, '786838655'),
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
(7, 'Pedro', 'Perez', '$2y$10$E9fh01JZISHb0BDgH.vZwub2oJ.EbCjuLwXnhABPY7AQwHhczeiM.', 99427634, 'pepe@gmail.com', NULL, 0, 4),
(8, 'Francisco', 'Alonzo', '$2y$10$fTof5pwR.VdwEmxU6psfVO/z/ncU5kPCwteX7I6XaZnO0ZadcWK.u', 9876543, 'franciscoalonzo2004@gmail.com', NULL, 0, 6),
(9, 'Jose', 'Piedras', '$2y$10$XnRTltE6LpdHho8eeP3OJuhBhsaNfTCRmZSvVNmhmWlVgF5ge6W.e', 9876543, 'josepiedras@gmail.com', '2022-11-10', 0, 3);

-- --------------------------------------------------------

--
-- Estructura para la vista `fullmulta`
--
DROP TABLE IF EXISTS `fullmulta`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fullmulta`  AS SELECT `reciben`.`ID_Usuario` AS `ID_Usuario`, concat(`usuarios`.`Nombre`,' ',`usuarios`.`Apellido`) AS `Usuario`, `multas`.`ID_Multas` AS `ID_Multas`, `multas`.`fecha` AS `fecha`, `multas`.`cant_dias` AS `cant_dias` FROM ((`multas` join `reciben`) join `usuarios`) WHERE `multas`.`ID_Multas` = `reciben`.`ID_Multas` AND `reciben`.`ID_Usuario` = `usuarios`.`ID_Usuario``ID_Usuario`  ;

-- --------------------------------------------------------

--
-- Estructura para la vista `info_libro`
--
DROP TABLE IF EXISTS `info_libro`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `info_libro`  AS SELECT `libros`.`Nombre` AS `Nombre`, `autores`.`Nombre_autor` AS `Nombre_autor`, `libros`.`Genero` AS `Genero`, `libros`.`Tipo` AS `Tipo`, `libros`.`Idioma` AS `Idioma` FROM ((`libros` join `autores`) join `escriben`) WHERE `libros`.`ISBN` = `escriben`.`ISBN` AND `escriben`.`ID_Autor` = `autores`.`ID_Autor``ID_Autor`  ;

-- --------------------------------------------------------

--
-- Estructura para la vista `prestamo_user`
--
DROP TABLE IF EXISTS `prestamo_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `prestamo_user`  AS SELECT `usuarios`.`Nombre` AS `Nombre`, count(`libros`.`Nombre`) AS `Cantidad_libros` FROM ((`libros` join `usuarios`) join `prestamos`) WHERE `libros`.`ISBN` = `prestamos`.`ISBN` AND `prestamos`.`ID_Usuario` = `usuarios`.`ID_Usuario` GROUP BY `usuarios`.`Nombre` ORDER BY `usuarios`.`Nombre` ASC  ;

-- --------------------------------------------------------

--
-- Estructura para la vista `resenial`
--
DROP TABLE IF EXISTS `resenial`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `resenial`  AS SELECT `libros`.`Nombre` AS `Nombre`, `resenias`.`Opinion` AS `Opinion` FROM ((`libros` join `resenias`) join `tiene`) WHERE `libros`.`ISBN` = `tiene`.`ISBN` AND `tiene`.`ID_Resenias` = `resenias`.`ID_Resenia``ID_Resenia`  ;

-- --------------------------------------------------------

--
-- Estructura para la vista `reseniav`
--
DROP TABLE IF EXISTS `reseniav`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `reseniav`  AS SELECT `usuarios`.`Nombre` AS `Nombre`, `resenias`.`Opinion` AS `Opinion` FROM ((((`resenias` join `libros`) join `usuarios`) join `tiene`) join `realizan`) WHERE `libros`.`ISBN` = `tiene`.`ISBN` AND `tiene`.`ID_Resenias` = `resenias`.`ID_Resenia` AND `resenias`.`ID_Resenia` = `realizan`.`ID_Resenia` AND `realizan`.`ID_Usuario` = `usuarios`.`ID_Usuario``ID_Usuario`  ;

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
  ADD PRIMARY KEY (`ID_Usuario`,`ID_Club`),
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
-- Indices de la tabla `realizan`
--
ALTER TABLE `realizan`
  ADD PRIMARY KEY (`ID_Resenia`),
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
  MODIFY `ID_Autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `club_de_lectura`
--
ALTER TABLE `club_de_lectura`
  MODIFY `ID_Club` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `multas`
--
ALTER TABLE `multas`
  MODIFY `ID_Multas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
-- Filtros para la tabla `realizan`
--
ALTER TABLE `realizan`
  ADD CONSTRAINT `realizan_ibfk_1` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuarios` (`ID_Usuario`),
  ADD CONSTRAINT `realizan_ibfk_2` FOREIGN KEY (`ID_Resenia`) REFERENCES `resenias` (`ID_Resenia`);

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
