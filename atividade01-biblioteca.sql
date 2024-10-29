CREATE DATABASE Biblioteca_Digital;

CREATE TABLE Autores (
    AutorID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Nacionalidade VARCHAR(100)
);

CREATE TABLE Livros (
    LivroID INT PRIMARY KEY,
    AutorID INT,
    AnoPublicacao INTEGER,
    FOREIGN KEY (AutorID) REFERENCES Autores(AutorID)
);


Inserindo dados na tabela Autores:
INSERT INTO Autores (AutorID, Nome, Nacionalidade) VALUES
(1, 'Harold Schechter', 'Americano'),
(2, 'Tori Telfer', 'Americana'),
(3, 'Ilana Casoy', 'Brasileira'),
(4, 'Carol Moreira e Mabê Bonafé', 'Brasileiras'),
(5, 'Ullisses Campbell', 'Brasileiro');


Inserindo dados na tabela Livros:
INSERT INTO Livros (LivroID, AutorID, AnoPublicacao) VALUES
(1, 'Serial Killers: Anatomia do Mal', 'Harold Schechter', 2013),
(2, 'Lady Killers', 'Tori Telfer', 2019),
(3, 'Casos de Família', 'Ilana Casoy', 2016),
(4, 'Modus Operandi: Guia de True Crime', 'Carol Moreira e Mabê Bonafé', 2022),
(5, 'Suzane: assassina e manipuladora', 'Ullisses Campbell', 2020);


CONSULTAS SQL:

1. Consulta com INNER JOIN:

SELECT Autores.Nome, Livros.Titulo, Livros.AnoPublicacao
FROM Autores
INNER JOIN Livros ON Autores.AutorID = Livros.AutorID;

2. Consulta com LEFT JOIN:
 
SELECT Autores.Nome, Livros.Titulo, Livros.AnoPublicacao
FROM Autores
LEFT JOIN Livros ON Autores.AutorID = Livros.AutorID;

3. Consulta com RIGHT JOIN:

SELECT Autores.Nome, Livros.Titulo, Livros.AnoPublicacao
FROM Autores
RIGHT JOIN Livros ON Autores.AutorID = Livros.AutorID;

4. Consulta com FULL JOIN:

SELECT Autores.Nome, Livros.Titulo, Livros.AnoPublicacao
FROM Autores
FULL JOIN Livros ON Autores.AutorID = Livros.AutorID;