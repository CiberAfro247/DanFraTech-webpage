/* Autores */
INSERT INTO autores (ID_Autor, Nombre_autor) VALUES
(1, "Rick Riordan"),
(2, "Samantha Shannon"),
(3, "T. Kingfisher"),
(4, "Ray Bradbury"),
(5, "Julia Quinn"),
(6, "Suzanne Collins"),
(7, "Stephen King"),
(8, "Andy Weir"),
(9, "Grady Hendrix"),
(10, "Martha Wells"),
(11, "Casey McQuiston"),
(12, "Ali Hazelwood"),
(13, "James S.A. Corey"),
(14, "Brandon Sanderson"),
(15, "Robin Hobb"),
(16, "Andrew Rowe"),
(17, "Cristopher Paolini"),
(18, "Tamsyn Muir"),
(19, "Cassandra Clare"),
(20, "John Gwynnw"),
(21, "Mark Lawrence"),
(22, "Jay Cristoff"),
(23, "Anna Todd"),
(24, "Joana Marcus"),
(25, "John Green"),
(26, "Elisabet Benavet"),
(27, "Emily Henry"),
(28, "Charlie N. Holmberg"),
(29, "Colleen Hoover"),
(30, "Satah J. Maas"),
(31, "Casey Macquiston"),
(32, "Silvia Moreno-Garcia"),
(33, "Hiron Ennes"),
(34, "Camilla Bruce"),
(35, "Catherine Bruce"),
(36, "Lucinda Berry"),
(37, "Claudia Lux"),
(38, "Shirley Jackson"),
(39, "Bram Stocker"),
(40, "Orson Scott Card"),
(41, "Frank Herbert"),
(42, "George Orwell"),
(43, "Ray Bradbury"),
(44, "Aldous Huxley"),
(45, "Isaac Asimov"),
(46, "Douglas Adams");

/* Clubs de lectura */
INSERT INTO club_de_lectura (ID_Club, fecha_creacion, Nombre) VALUE (1, "2022-08-30", "Thriller feelers");
INSERT INTO club_de_lectura (ID_Club, fecha_creacion, Nombre) VALUE (1, "2022-07-15", "Fantasy fans");
INSERT INTO club_de_lectura (ID_Club, fecha_creacion, Nombre) VALUE (1, "2022-07-19", "SciFi club");
INSERT INTO club_de_lectura (ID_Club, fecha_creacion, Nombre) VALUE (1, "2022-06-03", "Amor a primera vista");

/* Comentario resenias */
INSERT INTO comentario_resenia (ID_Resenia, Comentario) VALUE (1, "Que talento para las palabras");
INSERT INTO comentario_resenia (ID_Resenia, Comentario) VALUE (2, "Me encantó tu resenia!!!");

/* Contactos usuario */
INSERT INTO contactos_usuario (ID_Usuario_1, ID_Usuario_2) VALUE (4, 2);
INSERT INTO contactos_usuario (ID_Usuario_1, ID_Usuario_2) VALUE (5, 7);
INSERT INTO contactos_usuario (ID_Usuario_1, ID_Usuario_2) VALUE (6, 2);
INSERT INTO contactos_usuario (ID_Usuario_1, ID_Usuario_2) VALUE (6, 4);

/* Escriben */
INSERT INTO escriben (ID_Autor, ISBN) VALUES 
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

/* Forman */
INSERT INTO forman (ID_Usuario, ID_Club) VALUE (1, 1);
INSERT INTO forman (ID_Usuario, ID_Club) VALUE (4, 1);
INSERT INTO forman (ID_Usuario, ID_Club) VALUE (5, 1);
INSERT INTO forman (ID_Usuario, ID_Club) VALUE (2, 2);
INSERT INTO forman (ID_Usuario, ID_Club) VALUE (3, 2);
INSERT INTO forman (ID_Usuario, ID_Club) VALUE (6, 3);

/* Historial club */
INSERT INTO historial_club (ID_Club, ISBN) VALUE (1, 0450411435);
INSERT INTO historial_club (ID_Club, ISBN) VALUE (1, 1620401398);
INSERT INTO historial_club (ID_Club, ISBN) VALUE (2, 1635570298);
INSERT INTO historial_club (ID_Club, ISBN) VALUE (2, 786838655);
INSERT INTO historial_club (ID_Club, ISBN) VALUE (3, 0593135202);
INSERT INTO historial_club (ID_Club, ISBN) VALUE (3, 8445073990);
INSERT INTO historial_club (ID_Club, ISBN) VALUE (4, 1250244498);
INSERT INTO historial_club (ID_Club, ISBN) VALUE (4, 8492516119);

/* Historial usuario */
INSERT INTO historial_usuarios (ISBN, ID_Usuario) VALUE (8466660151, 1);
INSERT INTO historial_usuarios (ISBN, ID_Usuario) VALUE (1635570298, 2);
INSERT INTO historial_usuarios (ISBN, ID_Usuario) VALUE (1250244498, 3);
INSERT INTO historial_usuarios (ISBN, ID_Usuario) VALUE (1620401398, 4);
INSERT INTO historial_usuarios (ISBN, ID_Usuario) VALUE (1620401398, 4);
INSERT INTO historial_usuarios (ISBN, ID_Usuario) VALUE (2147483647, 5);
INSERT INTO historial_usuarios (ISBN, ID_Usuario) VALUE (0439023483, 6);
INSERT INTO historial_usuarios (ISBN, ID_Usuario) VALUE (059320123X, 6);
INSERT INTO historial_usuarios (ISBN, ID_Usuario) VALUE (0765397536, 6);
INSERT INTO historial_usuarios (ISBN, ID_Usuario) VALUE (8418945184, 7);

/* Juegos */
INSERT INTO juegos (ID_Multimedia, desarrollador) VALUE (2, "Valve");
INSERT INTO juegos (ID_Multimedia, desarrollador) VALUE (3, "From Software");

/* Libros */
INSERT INTO libros (ISBN, Genero, Sinopsis, Tipo, Nombre, Fecha_publicacion, Idioma, Imagen, Puntaje_total) VALUES 
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

/* Multas */
INSERT INTO multas (ID_Multas, fecha, cant_dias) VALUE (1, "2022-08-24", 30);
INSERT INTO multas (ID_Multas, fecha, cant_dias) VALUE (2, "2022-09-02", 30);

/* Multimedia */
INSERT INTO multimedia (ID_Multimedia, Nombre, Descripcion, fecha_publicacion) VALUE (1, "Everything, everywhere, all at once", "A Chinese immigrant gets involved in a crazy adventure, where she alone can save the world by explor", "2022-03-25");
INSERT INTO multimedia (ID_Multimedia, Nombre, Descripcion, fecha_publicacion) VALUE (2, "Portal", "Portal consists primarily of a series of puzzles that must be solved by teleporting the player's cha", "2007-08-10");
INSERT INTO multimedia (ID_Multimedia, Nombre, Descripcion, fecha_publicacion) VALUE (3, "Dark souls", "Dark Souls tiene lugar en el reino ficticio de Lordran. Los jugadores toman el papel de un personaje", "2016-03-24");
INSERT INTO multimedia (ID_Multimedia, Nombre, Descripcion, fecha_publicacion) VALUE (4, "Pulp fiction", "Cuenta la vida de dos asesinos de la mafia, un boxeador y un pandillero y su esposa, y un par de ban", "1995-03-31");

/* Peliculas */
INSERT INTO peliculas (ID_Multimedia, director) VALUE (1, "Dan Kwan, Daniel Scheinert");
INSERT INTO peliculas (ID_Multimedia, director) VALUE (4, "Quetin Tarantino");

/* Prestamos */
INSERT INTO prestamos (ISBN, ID_Usuario, fecha, tipo, Cant_dias) VALUE (1620401398, 6, "2022-09-06", "Digital", 30);
INSERT INTO prestamos (ISBN, ID_Usuario, fecha, tipo, Cant_dias) VALUE (2147483647, 1, "2022-07-18", "Digital", 30);
INSERT INTO prestamos (ISBN, ID_Usuario, fecha, tipo, Cant_dias) VALUE (786838655, 7, "2021-07-12", "Digital", 30);
INSERT INTO prestamos (ISBN, ID_Usuario, fecha, tipo, Cant_dias) VALUE (8445073990, 4, "2022-09-06", "Digital", 30);
INSERT INTO prestamos (ISBN, ID_Usuario, fecha, tipo, Cant_dias) VALUE (8492516119, 5, "2022-02-16", "Digital", 30);

/* Reciben */
INSERT INTO reciben (ID_Multas, ID_Usuario) VALUE (1, 3);
INSERT INTO reciben (ID_Multas, ID_Usuario) VALUE (2, 4);

/* Resenias */
INSERT INTO resenias (ID_Resenias, fecha, Puntaje, Opinion) VALUE (1, "2022-09-02", 4, "Tremendo");
INSERT INTO resenias (ID_Resenias, fecha, Puntaje, Opinion) VALUE (2, "2022-05-02", 4, "Fantastico, me atrapo muchisimo");

/* Tiene */
INSERT INTO tiene (ID_Resenias, ISBN) VALUE (1, 786838655);
INSERT INTO tiene (ID_Resenias, ISBN) VALUE (2, 8492516119);

/* Usuarios */
INSERT INTO usuarios (ID_Usuario, Nombre, Apellido, Clave, Telefono, Mail, Nacimiento, Administrador, Grado) VALUE (1, "Pedro", "Picapiedra", "ola", 987654321, "holahola@gmail.com", "2000-06-16", 0, 2);
INSERT INTO usuarios (ID_Usuario, Nombre, Apellido, Clave, Telefono, Mail, Nacimiento, Administrador, Grado) VALUE (2, "Pedro", "Artimañas", "artimañas", 987654321, "roberber@gmail.com", "2000-06-16", 0, 5);
INSERT INTO usuarios (ID_Usuario, Nombre, Apellido, Clave, Telefono, Mail, Nacimiento, Administrador, Grado) VALUE (3, "Roberto", "Berto", "berto", 99433251, "robertoberto@gmail.com", "2000-06-16", 1, 0);
INSERT INTO usuarios (ID_Usuario, Nombre, Apellido, Clave, Telefono, Mail, Nacimiento, Administrador, Grado) VALUE (4, "Jota", "Jota", "jota", 9876543, "jota@gmail.com", "2000-06-16", 0, 3);
INSERT INTO usuarios (ID_Usuario, Nombre, Apellido, Clave, Telefono, Mail, Nacimiento, Administrador, Grado) VALUE (5, "Inés", "Alfonces", "alfonces", 98567123, "inalfon@gmail.com", "2000-06-16", 0, 3);
INSERT INTO usuarios (ID_Usuario, Nombre, Apellido, Clave, Telefono, Mail, Nacimiento, Administrador, Grado) VALUE (6, "Juan", "Mira", "mira", 98564163, "juanmira@gmail.com", "2000-06-16", 0, 3);
INSERT INTO usuarios (ID_Usuario, Nombre, Apellido, Clave, Telefono, Mail, Nacimiento, Administrador, Grado) VALUE (7, "Pedro", "Perez", "perez", 99427634, "pepe@gmail.com", "2000-06-16", 0, 4);
INSERT INTO usuarios (ID_Usuario, Nombre, Apellido, Clave, Telefono, Mail, Nacimiento, Administrador, Grado) VALUE (8, "Jose", "Piedras", "piedra", 9876543, "josepiedras@gmail.com", "2000-03-15", 0, 3);
