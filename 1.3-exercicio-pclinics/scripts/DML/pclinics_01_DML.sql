
CREATE DATABASE PCLINICS_KAUE;
GO

USE PCLINICS_KAUE;
GO

CREATE TABLE CLINICA(
 idClinica TINYINT PRIMARY KEY IDENTITY(1,1),
 nomeClinica VARCHAR(30) NOT NULL
);
GO

INSERT INTO CLINICA(nomeClinica)
VALUES ('PLENA'), ('COBASE');
GO

SELECT * FROM CLINICA

CREATE TABLE VETERINARIO(
 idVet TINYINT PRIMARY KEY IDENTITY(1,1),
 idClinica TINYINT FOREIGN KEY REFERENCES CLINICA(idClinica),
 nomeVet VARCHAR(20) NOT NULL
);
GO

INSERT INTO VETERINARIO(idClinica, nomeVet)
VALUES (2, 'LUCAS'), (1, 'SAULO'), (1, 'JO�O');
GO

DELETE FROM VETERINARIO
WHERE idVet = 2;
GO

SELECT * FROM VETERINARIO

CREATE TABLE TIPOPET(
 idTipo TINYINT PRIMARY KEY IDENTITY(1,1),
 nomeTipo VARCHAR(20) NOT NULL
);
GO

INSERT INTO TIPOPET(nomeTipo)
VALUES ('GATO'), ('CACHORRO'), ('COELHO');
GO

SELECT * FROM TIPOPET

CREATE TABLE RACA(
 idRaca SMALLINT PRIMARY KEY IDENTITY(1,1),
 idTipo TINYINT FOREIGN KEY REFERENCES TIPOPET(idTipo),
 nomeRaca VARCHAR(25) NOT NULL
);
GO

INSERT INTO RACA(idTipo, nomeRaca)
VALUES (1, 'MUCHKIN'), (2, 'RETRIEVER'), (3, 'MINI LOP');
GO

SELECT * FROM RACA

CREATE TABLE DONO(
 idDono SMALLINT PRIMARY KEY IDENTITY(1,1),
 nomeDono VARCHAR(25) NOT NULL
);
GO

INSERT INTO DONO(nomeDono)
VALUES ('MURILLO'), ('NAYARA');
GO

SELECT * FROM DONO

CREATE TABLE PET(
 idPet SMALLINT PRIMARY KEY IDENTITY(1,1),
 idRaca SMALLINT FOREIGN KEY REFERENCES RACA(idRaca),
 idDono SMALLINT FOREIGN KEY REFERENCES DONO(idDono),
 nomePet VARCHAR(20) NOT NULL
);
GO

INSERT INTO PET(idRaca, idDono, nomePet)
VALUES (2, 2, 'TOBBY'), (1, 1, 'SUZANE');
GO

SELECT * FROM PET

CREATE TABLE ATENDIMENTO(
 idAtendimento SMALLINT PRIMARY KEY IDENTITY(1,1),
 idPet SMALLINT FOREIGN KEY REFERENCES PET(idPet),
 idVet TINYINT FOREIGN KEY REFERENCES VETERINARIO(idVet)
);
GO

INSERT INTO ATENDIMENTO(idPet, idVet)
VALUES (2,1), (1,3);
GO

SELECT * FROM ATENDIMENTO