-- Criando Database
CREATE DATABASE Banco;

-- Usando Database Banco
USE Banco;

-- Criando as tabelas do Banco
CREATE TABLE Pessoa (
    Nome Varchar(60),
    CPF Varchar(11) PRIMARY KEY NOT NULL,
    Salario Decimal (8, 2),
    Score INT,
	Cartoes INT,
    Emprestimo Boolean,
    Investimento Boolean
);

CREATE TABLE Cartao (
	CartaoId INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Bandeira Varchar (20),
    Numero Varchar(16),
    Validade Varchar(7),
    CVV INT,
    CPF Varchar(11),
    foreign key (CPF) references Pessoa (CPF)
);

CREATE TABLE Investimento (
	InvestimentoID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ValorInvestido INT,
    ValorRetorno INT,
    DataInvestimento DATE,
    CPF Varchar(11),
    foreign key (CPF) references Pessoa (CPF)
);

CREATE TABLE Emprestimo (
	EmprestimoID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ValorEmprestimo INT,
    ValorDivida INT,
    TaxaMensal Varchar(4),
    DataEmprestimo DATE,
    CPF Varchar(11),
    foreign key (CPF) references Pessoa (CPF)
);

CREATE TABLE Conta (
	ContaID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Saldo Decimal (10, 2),
    CPF Varchar(11),
    foreign key (CPF) references Pessoa (CPF)
);

-- Inserindo dados nas tabelas
INSERT INTO Pessoa (Nome, CPF, Salario, Score, Cartoes, Emprestimo, Investimento) VALUES 
("Rafael Carvalho", "45678910112", 2000.00, 530, 2, true, false);

INSERT INTO Cartao (Bandeira, Numero, Validade, CVV, CPF) VALUES 
("MasterCard", "2222333344445555", "11/2029", 345, "45678910112");

INSERT INTO Investimento (ValorInvestido, ValorRetorno, DataInvestimento, CPF) VALUES 
(100.000, 10.000, '2024-03-04', "45678910112");

INSERT INTO Emprestimo (ValorEmprestimo, ValorDivida, TaxaMensal, DataEmprestimo, CPF) VALUES 
(1.000, 1.000, "3%", '2024-03-04', "45678910112");

INSERT INTO Conta (Saldo, CPF) VALUES 
(26000.00, "45678910112");

SELECT * FROM Pessoa;
SELECT * FROM Cartao;
SELECT * FROM Investimento;
SELECT * FROM Emprestimo;
SELECT * FROM Conta;
