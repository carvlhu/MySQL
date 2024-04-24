CREATE DATABASE EscolaExericio;

USE EscolaExericio;

CREATE TABLE turmas (
	turma_id INT PRIMARY KEY AUTO_INCREMENT,
    descricao Varchar (255)
);

CREATE TABLE professores (
	professor_id INT PRIMARY KEY AUTO_INCREMENT,
    nome Varchar (255)
);

CREATE TABLE alunos (
	aluno_id INT PRIMARY KEY AUTO_INCREMENT,
    nome Varchar (255),
    idade INT,
    turma_id INT,
    foreign key (turma_id) references turmas (turma_id)
);

CREATE TABLE atividades (
	atividade_id INT PRIMARY KEY AUTO_INCREMENT,
    descricao Varchar(255),
    turma_id INT,
    foreign key (turma_id) references turmas (turma_id)
);

CREATE TABLE notas (
	aluno_id INT,
    atividade_id INT,
    primary key (aluno_id, atividade_id),
    foreign key (aluno_id) references alunos (aluno_id),
    foreign key (atividade_id) references atividades (atividade_id),
    nota DECIMAL (5, 2)
);

CREATE TABLE turma_professor (
	turma_id INT,
    professor_id INT,
    primary key (turma_id, professor_id),
    foreign key (turma_id) references turmas (turma_id),
    foreign key (professor_id) references professores (professor_id)
);


-- Inserção de dados nas Turmas
INSERT INTO Turmas (turma_id, descricao) VALUES (1, 'Matemática 101');
INSERT INTO Turmas (turma_id, descricao) VALUES (2, 'História 101');
INSERT INTO Turmas (turma_id, descricao) VALUES (3, 'Ciências 101');

-- Inserção de dados nos Professores
INSERT INTO Professores (professor_id, nome) VALUES (1, 'Carlos Silva');
INSERT INTO Professores (professor_id, nome) VALUES (2, 'Maria Fernandes');
INSERT INTO Professores (professor_id, nome) VALUES (3, 'João Pereira');
INSERT INTO Professores (professor_id, nome) VALUES (4, 'Carlos Miguel');

-- Inserção de dados na tabela Turma_Professor
INSERT INTO Turma_Professor (turma_id, professor_id) VALUES (1, 1);
INSERT INTO Turma_Professor (turma_id, professor_id) VALUES (2, 2);
INSERT INTO Turma_Professor (turma_id, professor_id) VALUES (3, 3);
 
-- Inserção de dados nos Alunos
INSERT INTO Alunos (aluno_id, nome, idade, turma_id) VALUES (1, 'Ana Santos', 15, 1);
INSERT INTO Alunos (aluno_id, nome, idade, turma_id) VALUES (2, 'Pedro Gonçalves', 16, 1);
INSERT INTO Alunos (aluno_id, nome, idade, turma_id) VALUES (3, 'Lucas Andrade', 15, 2);
INSERT INTO Alunos (aluno_id, nome, idade, turma_id) VALUES (4, 'Mariana Costa', 16, 3);

-- Inserção de dados nas Atividades
INSERT INTO Atividades (atividade_id, descricao, turma_id) VALUES (1, 'Prova de Matemática', 1);
INSERT INTO Atividades (atividade_id, descricao, turma_id) VALUES (2, 'Trabalho de História', 2);
INSERT INTO Atividades (atividade_id, descricao, turma_id) VALUES (3, 'Experimento de Ciências', 3);

-- Inserção de dados nas Notas
INSERT INTO Notas (aluno_id, atividade_id, nota) VALUES (1, 1, 9.5);
INSERT INTO Notas (aluno_id, atividade_id, nota) VALUES (2, 1, 8.0);
INSERT INTO Notas (aluno_id, atividade_id, nota) VALUES (3, 2, 7.5);


SELECT alunos.nome, turmas.descricao FROM alunos
INNER JOIN turmas on alunos.turma_id = turmas.turma_id;

SELECT alunos.nome, notas.nota FROM alunos
LEFT JOIN notas on alunos.aluno_id = notas.aluno_id;

SELECT alunos.nome, notas.nota FROM alunos
RIGHT JOIN notas on alunos.aluno_id = notas.aluno_id;

SELECT alunos.nome, turmas.descricao, professores.nome FROM alunos
INNER JOIN turmas on alunos.turma_id = turmas.turma_id
INNER JOIN turma_professor on turmas.turma_id = turma_professor.turma_id
INNER JOIN professores on turma_professor.professor_id = professores.professor_id;

SELECT alunos.nome, turmas.descricao FROM alunos
LEFT JOIN turmas ON alunos.turma_id = turmas.turma_id;

SELECT professores.nome, turmas.descricao FROM professores
LEFT JOIN turma_professor ON professores.professor_id = turma_professor.professor_id
LEFT JOIN turmas ON turma_professor.turma_id = turmas.turma_id;

SELECT turmas.descricao, atividades.descricao FROM turmas
LEFT JOIN atividades on turmas.turma_id = atividades.turma_id;

SELECT alunos.nome, notas.nota FROM alunos
LEFT JOIN notas ON alunos.aluno_id = notas.aluno_id
AND notas.atividade_id = 1;

SELECT atividades.descricao, alunos.nome, notas.nota FROM atividades
RIGHT JOIN notas ON atividades.atividade_id = notas.atividade_id
RIGHT JOIN alunos ON notas.aluno_id = alunos.aluno_id;

SELECT alunos.nome, notas.nota FROM notas
LEFT JOIN alunos ON notas.aluno_id = alunos.aluno_id;