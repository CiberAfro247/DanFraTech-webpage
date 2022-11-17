CREATE DATABASE proyecto;

CREATE TABLE club_de_lectura (
	ID_Club INT AUTO_INCREMENT,
	fecha_creacion DATE,
	Nombre VARCHAR(100),
	Descripcion VARCHAR(500),
	PRIMARY KEY (ID_Club)
);

CREATE TABLE libros (
	ISBN VARCHAR(50),
	Genero VARCHAR(100),
	Sinopsis VARCHAR(10000),
	Tipo VARCHAR(50),
	Nombre VARCHAR(100),
	Fecha_publicacion DATE,
	Idioma VARCHAR(100),
	Link VARCHAR(100),
	Puntaje_total INT(1),
	PRIMARY KEY(ISBN)
);

CREATE TABLE usuarios (
	ID_Usuario INT AUTO_INCREMENT,
	Nombre VARCHAR(100),
	Apellido VARCHAR(100),
	Clave VARCHAR(100),
	Telefono INT,
	Mail VARCHAR(100),
	Nacimiento DATE,
	Administrador INT,
	Grado INT,
	PRIMARY KEY (ID_Usuario)
);

CREATE TABLE autores (
	ID_Autor INT AUTO_INCREMENT,
	Nombre_autor VARCHAR(100),
	PRIMARY KEY (ID_Autor)
);

CREATE TABLE multas (
	ID_Multas INT AUTO_INCREMENT,
	fecha DATE,
	cant_dias INT,
	PRIMARY KEY (ID_Multas)
);

CREATE TABLE multimedia (
	ID_Multimedia INT,
	Nombre VARCHAR(50),
	Descripcion VARCHAR(100),
	fecha_publicacion DATE,
	PRIMARY KEY (ID_Multimedia)
);

CREATE TABLE resenias (
	ID_Resenia INT,
	fecha DATE,
	Puntaje INT(1),
	Opinion VARCHAR(300),
	PRIMARY KEY (ID_Resenia)
);

CREATE TABLE comentario_resenia (
	ID_Resenia INT,
	Comentario VARCHAR(200),
	PRIMARY KEY (ID_Resenia),
	FOREIGN KEY (ID_Resenia) REFERENCES resenias(ID_Resenia)
);

CREATE TABLE historial_usuarios (
	ISBN VARCHAR (50),
	ID_Usuario INT,
	PRIMARY KEY (ISBN),
	FOREIGN KEY (ID_Usuario) REFERENCES usuarios(ID_Usuario),
	FOREIGN KEY (ISBN) REFERENCES Libros(ISBN)
);

CREATE TABLE historial_club (
	ID_Club INT,
	ISBN VARCHAR (50),
	PRIMARY KEY (ISBN),
	FOREIGN KEY (ID_Club) REFERENCES club_de_lectura(ID_Club),
	FOREIGN KEY (ISBN) REFERENCES libros(ISBN)
);

CREATE TABLE prestamos (
	ISBN VARCHAR (50),
	ID_Usuario INT,
	fecha DATE,
	tipo VARCHAR(100),
	Cant_dias INT,
	PRIMARY KEY (ISBN, ID_Usuario),
	FOREIGN KEY (ISBN) REFERENCES libros (ISBN),
	FOREIGN KEY (ID_Usuario) REFERENCES usuarios (ID_Usuario)
);

CREATE TABLE escriben (
	ID_Autor INT,
	ISBN VARCHAR (50),
	PRIMARY KEY (ISBN, ID_Autor),
	FOREIGN KEY (ISBN) REFERENCES libros (ISBN),
	FOREIGN KEY (ID_Autor) REFERENCES autores (ID_Autor)
);

CREATE TABLE tiene (
	ID_Resenias INT,
	ISBN VARCHAR (50),
	PRIMARY KEY (ID_Resenias),
	FOREIGN KEY (ISBN) REFERENCES libros (ISBN),
	FOREIGN KEY (ID_Resenias) REFERENCES resenias (ID_Resenia)
);

CREATE TABLE reciben (
	ID_Multas INT,
	ID_Usuario INT,
	PRIMARY KEY (ID_Multas),
	FOREIGN KEY (ID_Multas) REFERENCES multas (ID_Multas),
	FOREIGN KEY (ID_Usuario) REFERENCES usuarios (ID_Usuario)
);

CREATE TABLE forman (
	ID_Usuario INT,
	ID_Club INT,
	creador INT(1),
	PRIMARY KEY (ID_Usuario, ID_Club),
	FOREIGN KEY (ID_Club) REFERENCES club_de_lectura (ID_Club),
	FOREIGN KEY (ID_Usuario) REFERENCES usuarios (ID_Usuario)
);

CREATE TABLE juegos (
	ID_Multimedia INT,
	desarrollador VARCHAR(100),
	PRIMARY KEY (ID_Multimedia),
	FOREIGN KEY (ID_Multimedia) REFERENCES multimedia(ID_Multimedia)
);

CREATE TABLE peliculas (
	ID_Multimedia INT,
	director VARCHAR(100),
	PRIMARY KEY (ID_Multimedia),
	FOREIGN KEY (ID_Multimedia) REFERENCES multimedia(ID_Multimedia)
);

CREATE TABLE poseen (
	ISBN VARCHAR (50),
	ID_Multas INT,
	PRIMARY KEY (ISBN, ID_Multas),
	FOREIGN KEY (ISBN) REFERENCES libros(ISBN),
	FOREIGN KEY (ID_Multas) REFERENCES multas(ID_Multas)
);

CREATE TABLE contactos_usuario (
	ID_Usuario_1 INT,
	ID_Usuario_2 INT,
	PRIMARY KEY (ID_Usuario_1, ID_Usuario_2),
	FOREIGN KEY (ID_Usuario_1) REFERENCES usuarios(ID_Usuario),
	FOREIGN KEY (ID_Usuario_2) REFERENCES usuarios(ID_Usuario)
);

CREATE TABLE realizan (
	ID_Resenia INT,
	ID_Usuario INT,
	PRIMARY KEY (ID_Resenia),
	FOREIGN KEY (ID_Usuario) REFERENCES usuarios(ID_Usuario),
	FOREIGN KEY (ID_Resenia) REFERENCES resenias(ID_Resenia)
);
