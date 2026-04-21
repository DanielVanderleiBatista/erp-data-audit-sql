CREATE TABLE Alunos (
    IdAluno INT PRIMARY KEY,
    Nome VARCHAR(100),
    Status VARCHAR(20)
);

CREATE TABLE Cursos (
    IdCurso INT PRIMARY KEY,
    NomeCurso VARCHAR(100)
);

CREATE TABLE Matriculas (
    IdMatricula INT PRIMARY KEY,
    IdAluno INT,
    IdCurso INT,
    Status VARCHAR(20),
    DataMatricula DATE,
    FOREIGN KEY (IdAluno) REFERENCES Alunos(IdAluno),
    FOREIGN KEY (IdCurso) REFERENCES Cursos(IdCurso)
);

CREATE TABLE Financeiro (
    IdFinanceiro INT PRIMARY KEY,
    IdAluno INT,
    Valor DECIMAL(10,2),
    Status VARCHAR(20),
    FOREIGN KEY (IdAluno) REFERENCES Alunos(IdAluno)
);
