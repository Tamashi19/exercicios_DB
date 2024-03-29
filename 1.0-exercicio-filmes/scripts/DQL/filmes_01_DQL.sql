CREATE DATABASE CATALOGO;
GO

USE CATALOGO;
GO

CREATE TABLE GENERO (
 idGenero TINYINT PRIMARY KEY IDENTITY(1,1),
 nomeGenero VARCHAR(20) NOT NULL
);
GO



CREATE TABLE FILME(
 idFilme SMALLINT PRIMARY KEY IDENTITY(1,1),
 idGenero TINYINT FOREIGN KEY REFERENCES GENERO(idGenero),
 tituloFilme VARCHAR(50) NOT NULL
 );
 GO

 INSERT INTO GENERO(nomeGenero)
 VALUES ('A��O'), ('ROMANCE');
 GO

 INSERT INTO GENERO(nomeGenero)
 VALUES ('AVENTURA'), ('TERROR');
 GO

 SELECT * FROM GENERO
 
 DELETE FROM GENERO
 WHERE idGenero = 2

 INSERT INTO FILME (tituloFilme, idGenero)
 VALUES ('Rambo', 1), ('Vingadores', 1), ('Ghost', 3) , ('DIARIO DE UMA PAIXAO', 3);
 GO

 INSERT INTO FILME(tituloFilme,idGenero)
 VALUES ('HER', NULL), ('HOMEM ARANHA', NULL);
 GO

 INSERT INTO FILME(tituloFilme,idGenero)
 VALUES ('Ghost', 3), ('Vingadores', 1);
 GO

 SELECT * FROM FILME
 LEFT JOIN GENERO
 ON FILME.idGenero = GENERO.idGenero;
 GO

 SELECT idFilme, tituloFilme, nomeGenero FROM FILME
 LEFT JOIN GENERO
 ON FILME.idGenero = GENERO.idGenero;
 GO

 SELECT idFilme, tituloFilme, nomeGenero FROM FILME
 RIGHT JOIN GENERO
 ON FILME.idGenero = GENERO.idGenero;
 GO

 SELECT idFilme, tituloFilme, nomeGenero FROM FILME
 INNER JOIN GENERO
 ON FILME.idGenero = GENERO.idGenero;
 GO

 SELECT idFilme, tituloFilme, nomeGenero FROM FILME
 FULL OUTER JOIN GENERO
 ON FILME.idGenero = GENERO.idGenero;
 GO

 UPDATE FILME set tituloFilme = 'RAMBO 2'
 WHERE idFilme = 1

 DELETE FROM FILME
 WHERE idFilme in (2,3);