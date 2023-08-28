CREATE DATABASE livraria;

SHOW DATABASES; 

USE livraria;

CREATE TABLE Livraria.Livros (
	
	Id INT auto_increment,	
	Titulo VARCHAR(300) NOT NULL,
    autor VARCHAR (255) NOT NULL,
    sexoA VARCHAR (14) NOT NULL,
    Paginas INT NOT NULL,
    Editora VARCHAR (20) NOT NULL,
    valor_capa DOUBLE NOT NULL,
    valor_kindle DOUBLE NOT NULL,
    ano INT,
	PRIMARY KEY (Id)
);

INSERT INTO Livraria.Livros (Titulo, autor, sexoA, Paginas, Editora, valor_capa, valor_kindle, ano)
VALUES 
('Pai rico, Pai pobre', 'Robert T. Kiyosaki', 'M', 336, 'Alta Books', 61.45, 58.45, 2018),
('Mindset', 'Carol s.Dweck', 'F', 312, 'Objetiva', 38.99, 14.95, 2017),
('Como fazer amigos e influenciar passoas', 'Dale carnegie', 'M', 256, 'Sextante', 38.99, 33.24, 2019),
('A Cabana', 'Willian P. Young', 'M', 240, 'Arqueiro', 35.99, 17.90, 2008),
('O poder do Hábito', 'Charles Duhigg', 'M', 408, 'Objetiva', 42.99, 29.90, 2012),
('Código limpo', 'Robert C. Martin', 'M', 425, 'Alta Books', 91.99, 87.39, 2009),
('Essencialismo', 'Greg McKeown', 'M', 272, 'Sextante', 53.58, 33.24, 2015),
('Me poupe!', 'Nathalia Arcuri', 'F', 176, 'Sextante', 32.86, 17.09, 2018),
('Comece pelo Porque', 'Simon Sinek', 'M', 256, 'Sextante', 50.58, 24.90, 2018),                             
('O Alquimista', 'Paulo Coelho', 'M', 206, 'Paralela', 24.70, 14.70,2017);

-- trazer todos os dados
SELECT * FROM Livraria.Livros;

-- 2 trazer livros e editora 
SELECT Titulo, Editora FROM Livraria.Livros;

-- 3 trazer nome do livro, editora, autor 

SELECT Titulo, Editora, sexoA, autor FROM Livraria.Livros
WHERE sexoA= 'M';

-- 4 Trazer nome do livro, numero de paginas e autores do sexo feminino;
SELECT Titulo, Paginas, sexoA, autor FROM Livraria.Livros
WHERE sexoA= 'F';

-- 5 Trazer o nome do autor, editora, e ano a partir de 2017
SELECT Titulo, Editora, autor, ano FROM Livraria.Livros
WHERE Ano < 2017;

-- 6 Trazer nome dos autores, sexo masculino publicados pela editora Sextante ou Alta Book;
SELECT SexoA, Editora, Autor FROM Livraria.Livros
WHERE sexoA = 'M' AND Editora = 'Sextante' OR 'Alta Book';

-- 7 Trazer nome do livro, do autor, numero de paginas, editora, ano, e valor da capa comum

SELECT Titulo, autor, paginas, editora, ano, paginas, valor_capa FROM Livraria.Livros;

-- 8 Trazer nome do livro, do autor, numero de paginas, editora, ano, e valor kinlde

SELECT Titulo, autor, paginas, editora, ano, paginas, valor_kindle FROM Livraria.Livros;

-- 9 Trazer o nome dos autores com livros publicados pela editora Sextante;

SELECT autor, Editora  FROM Livraria.Livros
WHERE  Editora = 'sextante';

-- 10 Trazer o nome do livro, autores, valor com capa comum e valor no Kindle.
SELECT Titulo, autor, valor_capa, valor_kindle FROM livraria.livros;
 

 
