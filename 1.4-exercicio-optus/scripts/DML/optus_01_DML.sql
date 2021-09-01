CREATE DATABASE OPTUS_KAUE;
GO

USE OPTUS_KAUE;
GO

CREATE TABLE ARTISTA(
 idArtista SMALLINT PRIMARY KEY IDENTITY(1,1),
 nomeArtista VARCHAR(20) NOT NULL
);
GO

INSERT INTO ARTISTA(nomeArtista)
VALUES ('SIA'), ('ALT-J');
GO

SELECT * FROM ARTISTA

CREATE TABLE ESTILO(
 idEstilo TINYINT PRIMARY KEY IDENTITY(1,1),
 nomeEstilo VARCHAR(20) NOT NULL
);
GO

INSERT INTO ESTILO(nomeEstilo)
VALUES ('POP'), ('INDIE'), ('ROCK');
GO

SELECT * FROM ESTILO

CREATE TABLE ALBUM(
 idAlbum SMALLINT PRIMARY KEY IDENTITY(1,1),
 idArtista SMALLINT FOREIGN KEY REFERENCES ARTISTA(idArtista),
 idEstilo TINYINT FOREIGN KEY REFERENCES ESTILO(idEstilo),
 nomeAlbum VARCHAR(25) NOT NULL
);
GO

INSERT INTO ALBUM(idArtista, idEstilo, nomeAlbum)
VALUES (1, 1, 'ALIVE'), (2, 3, 'BREEZEBLOCKS');
GO

SELECT * FROM ALBUM

CREATE TABLE USUARIO(
 idUsuario SMALLINT PRIMARY KEY IDENTITY(1,1),
 nomeUsuario VARCHAR(25) NOT NULL
);
GO

INSERT INTO USUARIO(nomeUsuario)
VALUES ('LUCAS'), ('SAULO'), ('ANA');
GO

SELECT * FROM USUARIO

DELETE FROM USUARIO
WHERE idUsuario = 1;
GO