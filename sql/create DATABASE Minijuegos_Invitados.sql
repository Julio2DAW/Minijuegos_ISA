DROP DATABASE IF EXISTS Minijuegos_Invitados;
CREATE DATABASE IF NOT EXISTS Minijuegos_Invitados DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE Minijuegos_Invitados;

-- Tabla Minijuego
CREATE TABLE  Minijuego(
    idMinijuego tinyint UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nombre varchar(60) NOT NULL,
    ruta varchar (3000) NOT NULL,
    portada varchar (3000) NOT NULL
);
-- Tabla Partida
CREATE TABLE  Partida(
    idPartida int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    idMinijuego tinyint UNSIGNED NOT NULL,
	nick  char(10) NOT NULL,
    puntuacion smallint UNSIGNED NOT NULL,
    fechaHora datetime  NOT NULL default NOW(),
    CONSTRAINT FK_idMinijuego_Partida FOREIGN KEY (idMinijuego) REFERENCES Minijuego(idMinijuego)
);
-- Meter minijuegos
INSERT INTO Minijuego (nombre, ruta, portada) 
VALUES
('Los multiplos', 'ruta1','portada1'),
('Tabla periodica', 'ruta2','portada2'),
('Reciclaje', 'ruta3','portada3'),
('Mekatrhon3000', 'ruta4','portada4'),
('Dora La Programadora', 'ruta5','portada5'),
('El cascanueces', 'ruta6','portada6'),
('Caperucita y la tabla periodica', 'ruta7','portada7');

-- Meter Partida
INSERT INTO Partida (idMinijuego, nick, puntuacion) 
VALUES
(1, 'tumorenito',100),
(1, 'ManuRelajao',250),
(2, 'DaniAngel',120),
(2, 'Richard',1),
(5, 'Ale66',2),
(6, 'AbelR',230),
(4, 'ruas3',240),
(5, 'Isa66',5),
(6, 'JuanR',4),
(4, 'rudss3',300);