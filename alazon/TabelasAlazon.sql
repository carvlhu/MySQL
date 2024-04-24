USE Alazon;

CREATE TABLE jogosEletronicos (
	JogoID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Desenvolvedora VARCHAR(100),
    Plataforma VARCHAR (50),
    AnoLancamento INT
);

CREATE TABLE filmes (
	FilmeID INT PRIMARY KEY AUTO_INCREMENT,
    Titulo VARCHAR(100),
    Diretor VARCHAR (100),
    Genero VARCHAR (50),
    AnoLancamento INT
);

CREATE TABLE livros (
	LivroID INT PRIMARY KEY AUTO_INCREMENT,
    Titulo VARCHAR(100),
    Autor VARCHAR (100),
    Genero VARCHAR (50),
    AnoPublicacao INT
);

CREATE TABLE musicas (
	MusicaID INT PRIMARY KEY AUTO_INCREMENT,
    Titulo VARCHAR (100),
    Artista VARCHAR (100),
    Album VARCHAR (100),
    Ano INT
);

CREATE TABLE esportes (
	EsporteID INT PRIMARY KEY AUTO_INCREMENT,
    Nome Varchar (100),
    Tipo Varchar(50),
    PopularidadeGlobal VARCHAR (50)
);

INSERT INTO jogosEletronicos (Nome, Desenvolvedora, Plataforma, AnoLancamento) VALUES
("Homem-Aranha", "Insomniac Games", "PS4", "2018"),
("GTA-5","Rockstar","PS4, XBOX, PC", "2013"),
("Fortnite","Epic Games", "PS4, XBOX, PC", "2017"),
("Forza Horizon", "Xbox Game Studios", "XBOX ONE, XBOX 360", "2014"),
("PES-2015", "KONAMI", "PS4, XBOX, PC","2014");

SELECT * FROM jogosEletronicos;

INSERT INTO filmes (Titulo, Diretor, Genero, AnoLancamento) VALUES
("Corações de ferro","David Ayer","Guerra e Ação","2014"),
("O silêncio dos inocentes","Jonathan Demme","Crime e Terror","1991"),
("O lobo de wall street","Martin Scorsese","Crime e Comédia","2013"),
("Armas na mesa","John Madden","Thriller e Drama","2016"),
("Bastardos Inglórios","Quentin Tarantino","Guerra e Aventura","2009");

SELECT * FROM filmes;

INSERT INTO livros (Titulo, Autor, Genero, AnoPublicado) VALUES
("Percy Jackson e o ladrão de raios","Rick Riordan","Mitologia e Ação","2005"),
("O diario de um banana: Rodrick é o cara","Jeff Kinney","Comédia","2008"),
("Harry potter e a Pedra filosofal","J.K.Rowling","Fantasia e Drama","1997"),
("O homem de giz","C. J. Tudor","Suspense e Romance","2018"),
("Divina comédia","Dante Alighieri","Poesia","1314");

SELECT * FROM livros;

INSERT INTO musicas (Titulo, Artista, Album, Ano) VALUES
("LET'S GO 4","DJ GBR, IG, Ryan SP, PH, Davi, Luki, Don Juan, Kadu ,GH do 7, GP, TrapLaudo","null","2023"),
("Capital das notas","MC Menor MR","Capital das notas","2019"),
("Cavalo de Troia","MC Kevin","null","2019"),
("Doutora 3","MC Kevin","null","2022"),
("Tropa do zaza","The boyfitlhchucro","null","2024");

SELECT * FROM musicas;

INSERT INTO esportes (Nome, Tipo, Popularidade) VALUES 
("Futsal","Equipe","Muito popular"),
("Tênis","Individual","Pouco popular"),
("Vôlei","Equipe","Muito popular"),
("Queimada","Equipe","Popular"),
("Natação","Indiviual","Popular");

SELECT * FROM esportes;



