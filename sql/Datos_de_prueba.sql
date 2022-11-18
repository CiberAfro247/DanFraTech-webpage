/* Autores */
INSERT INTO autores (ID_Autor, Nombre_autor) VALUE (1, "Rick Riordan");
INSERT INTO autores (ID_Autor, Nombre_autor) VALUE (2, "Samantha Shannon");
INSERT INTO autores (ID_Autor, Nombre_autor) VALUE (3, "T. Kingfisher");
INSERT INTO autores (ID_Autor, Nombre_autor) VALUE (4, "Ray Bradbury");
INSERT INTO autores (ID_Autor, Nombre_autor) VALUE (5, "Julia Quinn");
INSERT INTO autores (ID_Autor, Nombre_autor) VALUE (6, "Suzanne Collins");
INSERT INTO autores (ID_Autor, Nombre_autor) VALUE (7, "Stephen King");
INSERT INTO autores (ID_Autor, Nombre_autor) VALUE (8, "Andy Weir");
INSERT INTO autores (ID_Autor, Nombre_autor) VALUE (9, "Grady Hendrix");
INSERT INTO autores (ID_Autor, Nombre_autor) VALUE (10, "Martha Wells");
INSERT INTO autores (ID_Autor, Nombre_autor) VALUE (11, "Casey McQuiston");
INSERT INTO autores (ID_Autor, Nombre_autor) VALUE (12, "Ali Hazelwood");
INSERT INTO autores (ID_Autor, Nombre_autor) VALUE (13, "James S.A. Corey");

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
INSERT INTO escriben (ID_Autor, ISBN) VALUE (1, 786838655);
INSERT INTO escriben (ID_Autor, ISBN) VALUE (2, 1635570298);
INSERT INTO escriben (ID_Autor, ISBN) VALUE (2, 1620401398);
INSERT INTO escriben (ID_Autor, ISBN) VALUE (3, 2147483647);
INSERT INTO escriben (ID_Autor, ISBN) VALUE (4, 8445073990);
INSERT INTO escriben (ID_Autor, ISBN) VALUE (5, 8492516119);
INSERT INTO escriben (ID_Autor, ISBN) VALUE (6, 0439023483);
INSERT INTO escriben (ID_Autor, ISBN) VALUE (7, 0450040186);
INSERT INTO escriben (ID_Autor, ISBN) VALUE (7, 0450411435);
INSERT INTO escriben (ID_Autor, ISBN) VALUE (8, 0593135202);
INSERT INTO escriben (ID_Autor, ISBN) VALUE (9, 059320123X);
INSERT INTO escriben (ID_Autor, ISBN) VALUE (10, 0765397536);
INSERT INTO escriben (ID_Autor, ISBN) VALUE (11, 1250244498);
INSERT INTO escriben (ID_Autor, ISBN) VALUE (12, 8418945184);
INSERT INTO escriben (ID_Autor, ISBN) VALUE (13, 8466660151);

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
INSERT INTO libros (ISBN, Genero, Sinopsis, Tipo, Nombre, Fecha_publicacion, Idioma, Imagen, Puntaje_total) VALUES (0786838655, "Percy Jackson y el ladrón del rayo", "Fantasia", "¿Qué pasaría si un día descubrieras que, en realidad, eres hijo de un dios griego que debe cumplir una misión secreta? Pues eso es lo que le sucede a Percy Jackson, que a partir de ese momento se dispone a vivir los acontecimientos más emocionantes de su vida. Expulsado de seis colegios, Percy padece dislexia y dificultades para concentrarse, o al menos ésa es la versión oficial. Objeto de burlas por inventarse historias fantásticas, ni siquiera él mismo acaba de creérselas hasta el día que los dioses del Olimpo le revelan la verdad: Percy es nada menos que un semidiós, es decir, el hijo de un dios y una mortal. Y como tal ha de descubrir quién ha robado el rayo de Zeus y así evitar que estalle una guerra entre los dioses. Para cumplir la misión contará con la ayuda de sus amigos Grover, un joven sátiro, y Annabeth, hija de Atenea.", "Digital", "2006-3-1", "Español", "../Imagenes/Fantasia/ladron_rayo.png", 5);
INSERT INTO libros (ISBN, Genero, Sinopsis, Tipo, Nombre, Fecha_publicacion, Idioma, Imagen, Puntaje_total) VALUES (1635570298, "El priorato del naranjo", "Fantasia", "La Casa de Berethnet ha gobernado Inys durante mil años. Aún sin casar, la reina Sabran IX debe concebir una hija para proteger a su reino de la destrucción. Pero los asesinos cada vez están más cerca. Ead Duryan es una intrusa en la corte. A pesar de que se ha posicionado como dama de compañía, es leal a una sociedad oculta de magos. Ead vigila a Sabran, protegiéndola en secreto con magia prohibida. Al otro lado del mar oscuro, Tane ha entrenado toda su vida para ser una jinete de dragón, pero se ve obligada a tomar una decisión que podría romper su vida en añicos. Mientras tanto, el Este y el Oeste siguen divididos. Cada región tiene una religión diferente basada en los sucesos acaecidos mucho tiempo atrás. Los que adoran a los dragones, los que los detestan y quienes adoran al Sin Nombre aparentemente nunca se pondrán de acuerdo. Y las fuerzas del caos se despiertan de su letargo y parecen estar a punto de llegar.", "Digital", "2019-2-26", "Español", "../Imagenes/Fantasia/naranjo.jpg", 5);
INSERT INTO libros (ISBN, Genero, Sinopsis, Tipo, Nombre, Fecha_publicacion, Idioma, Imagen, Puntaje_total) VALUES (9781250830784, "What moves the dead", "Fantasia", "When Alex Easton, a retired soldier, receives word that their childhood friend Madeline Usher is dying, they race to the ancestral home of the Ushers in the remote countryside of Ruritania. What they find there is a nightmare of fungal growths and possessed wildlife, surrounding a dark, pulsing lake. Madeline sleepwalks and speaks in strange voices at night, and her brother Roderick is consumed with a mysterious malady of the nerves. Aided by a redoubtable British mycologist and a baffled American doctor, Alex must unravel the secret of the House of Usher before it consumes them all.", "Digital", "What moves the dead", "2022-7-12", "Ingles", "../Imagenes/Terror/moves_dead.jpg", 3);
INSERT INTO libros (ISBN, Genero, Sinopsis, Tipo, Nombre, Fecha_publicacion, Idioma, Imagen, Puntaje_total) VALUES (1620401398, "The bone season", "Fantasia", "The year is 2059. Nineteen-year-old Paige Mahoney is working in the criminal underworld of Scion London, based at Seven Dials, employed by a man named Jaxon Hall. Her job: to scout for information by breaking into people’s minds. For Paige is a dreamwalker, a clairvoyant and, in the world of Scion, she commits treason simply by breathing. It is raining the day her life changes for ever. Attacked, drugged and kidnapped, Paige is transported to Oxford – a city kept secret for two hundred years, controlled by a powerful, otherworldly race. Paige is assigned to Warden, a Rephaite with mysterious motives. He is her master. Her trainer. Her natural enemy. But if Paige wants to regain her freedom she must allow herself to be nurtured in this prison where she is meant to die. The Bone Season introduces a compelling heroine and also introduces an extraordinary young writer, with huge ambition and a teeming imagination. Samantha Shannon has created a bold new reality in this riveting debut.", "Digital", "2013-8-20", "Ingles", "../Imagenes/Fantasia/bone_season.jpg", 3);
INSERT INTO libros (ISBN, Genero, Sinopsis, Tipo, Nombre, Fecha_publicacion, Idioma, Imagen, Puntaje_total) VALUES (0439023483, "Los juegos del hambre", "Ciencia ficción", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", "Digital", "2008-09-14", "Español", "../Imagenes/Ciencia_ficcion/juegos_hambre.jpg", 4);
INSERT INTO libros (ISBN, Genero, Sinopsis, Tipo, Nombre, Fecha_publicacion, Idioma, Imagen, Puntaje_total) VALUES (0450040186, "The shining", "Terror", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", "Digital", "1977-01-28", "Inglés", "../Imagenes/Terror/shining.jpg", 4);
INSERT INTO libros (ISBN, Genero, Sinopsis, Tipo, Nombre, Fecha_publicacion, Idioma, Imagen, Puntaje_total) VALUES (0450411435, "It", "Terror", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", "Digital", "1987-10-01", "Inglés", "../Imagenes/Terror/it.jpg", 4);
INSERT INTO libros (ISBN, Genero, Sinopsis, Tipo, Nombre, Fecha_publicacion, Idioma, Imagen, Puntaje_total) VALUES (0593135202, "Proyecto hail mary", "Ciencia ficción", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", "Digital", "2021-05-04", "Español", "../Imagenes/Ciencia_ficcion/hail_mary.jpg", 4);
INSERT INTO libros (ISBN, Genero, Sinopsis, Tipo, Nombre, Fecha_publicacion, Idioma, Imagen, Puntaje_total) VALUES (059320123X, "The final girl support group", "Terror", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", "Digital", "2021-07-13", "Inglés", "../Imagenes/Terror/support.jpg", 3);
INSERT INTO libros (ISBN, Genero, Sinopsis, Tipo, Nombre, Fecha_publicacion, Idioma, Imagen, Puntaje_total) VALUES (0765397536, "All systems red", "Ciencia ficción", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", "Digital", "2017-05-02", "Inglés", "../Imagenes/Ciencia_ficcion/systems_red.jpg", 3);
INSERT INTO libros (ISBN, Genero, Sinopsis, Tipo, Nombre, Fecha_publicacion, Idioma, Imagen, Puntaje_total) VALUES (1250244498, "One last stop", "Romance", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", "Digital", "2021-06-01", "Inglés", "../Imagenes/Romance/stop.jpg", 2);
INSERT INTO libros (ISBN, Genero, Sinopsis, Tipo, Nombre, Fecha_publicacion, Idioma, Imagen, Puntaje_total) VALUES (1501139231, "The seven husbands of evelyn hugo", "Ficcion", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", "Digital", "2017-06-13", "Inglés", "../Imagenes/husband.jpg", 5);
INSERT INTO libros (ISBN, Genero, Sinopsis, Tipo, Nombre, Fecha_publicacion, Idioma, Imagen, Puntaje_total) VALUES (8418945184, "La hipótesis del amor", "Romance", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", "Digital", "2021-09-14", "Español", "../Imagenes/Romance/hipotesis.jpg", 2);
INSERT INTO libros (ISBN, Genero, Sinopsis, Tipo, Nombre, Fecha_publicacion, Idioma, Imagen, Puntaje_total) VALUES (8445073990, "El hombre ilustrado", "Ciencia ficción", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", "Digital", "1951-02-01", "Español", "../Imagenes/Ciencia_ficcion/hombre_ilustrado.jpg", 2);
INSERT INTO libros (ISBN, Genero, Sinopsis, Tipo, Nombre, Fecha_publicacion, Idioma, Imagen, Puntaje_total) VALUES (8466660151, "El despertar del leviatán", "Ciencia ficción", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", "Digital", "2011-06-02", "Español", "../Imagenes/Ciencia_ficcion/despertar_leviatan.jpg", 4);
INSERT INTO libros (ISBN, Genero, Sinopsis, Tipo, Nombre, Fecha_publicacion, Idioma, Imagen, Puntaje_total) VALUES (8492516119, "El duque y yo", "Romance", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", "Digital", "2000-01-05", "Español", "../Imagenes/Romance/duque.jpg", 4);

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
