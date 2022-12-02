/* Lógico_1: */

CREATE TABLE Grade (
    codigo INTEGER PRIMARY KEY,
    ano_registro INTEGER,
    fk_Chefe_Departamento_Curso_Coordenador_cpf VARCHAR,
    fk_Chefe_Departamento_Curso_Coordenador_codigo INTEGER
);

CREATE TABLE Historico_Aluno (
    numero INTEGER,
    IRA FLOAT,
    formacao VARCHAR,
    matricula VARCHAR,
    cpf VARCHAR,
    sexo VARCHAR,
    nome VARCHAR,
    idade INTEGER,
    fk_Chefe_Departamento_Curso_Coordenador_cpf VARCHAR,
    fk_Chefe_Departamento_Curso_Coordenador_codigo INTEGER,
    data_entrada DATE,
    PRIMARY KEY (numero, cpf)
);

CREATE TABLE Turma (
    capacidade INTEGER,
    turno VARCHAR,
    codigo INTEGER PRIMARY KEY,
    fk_Professor_cpf VARCHAR,
    fk_Disciplina_codigo INTEGER
);

CREATE TABLE Disciplina (
    nome VARCHAR,
    codigo INTEGER PRIMARY KEY
);

CREATE TABLE Instituto_Diretor (
    codigo INTEGER,
    nome VARCHAR,
    data_fundacao DATE,
    data_inicio DATE,
    numero INTEGER,
    cpf VARCHAR,
    idade INTEGER,
    sexo VARCHAR,
    PRIMARY KEY (codigo, cpf)
);

CREATE TABLE Secretaria (
    registro INTEGER,
    setor VARCHAR,
    fk_Chefe_Departamento_Curso_Coordenador_cpf VARCHAR,
    fk_Chefe_Departamento_Curso_Coordenador_codigo INTEGER,
    data_inicio DATE
);

CREATE TABLE Universidade_Reitor (
    localizacao VARCHAR,
    numero_emec INTEGER,
    data_entrada DATE,
    cadastro INTEGER,
    cpf VARCHAR,
    idade INTEGER,
    sexo VARCHAR,
    nome VARCHAR,
    PRIMARY KEY (numero_emec, cpf)
);

CREATE TABLE Professor (
    codigo INTEGER,
    formacao VARCHAR,
    nome VARCHAR,
    sexo VARCHAR,
    idade INTEGER,
    cpf VARCHAR PRIMARY KEY,
    fk_Departamento_codigo INTEGER,
    horas INTEGER,
    data_inicio DATE
);

CREATE TABLE Chefe_Departamento_Curso_Coordenador (
    codigo INTEGER,
    cpf VARCHAR,
    idade INTEGER,
    sexo VARCHAR,
    nome VARCHAR,
    data_entrada DATE,
    codigo INTEGER,
    localizacao VARCHAR,
    data_fundacao DATE,
    duracao INTEGER,
    turno VARCHAR,
    data_inicio DATE,
    id INTEGER,
    fk_Instituto_Diretor_codigo INTEGER,
    fk_Instituto_Diretor_cpf VARCHAR,
    PRIMARY KEY (cpf, codigo)
);

CREATE TABLE Bolsa (
    codigo INTEGER PRIMARY KEY,
    remuneracao FLOAT,
    duracao INTEGER,
    fk_Universidade_Reitor_numero_emec INTEGER,
    fk_Universidade_Reitor_cpf VARCHAR
);

CREATE TABLE AlunoTurma (
    fk_Aluno_cpf VARCHAR,
    fk_Turma_codigo INTEGER
);

CREATE TABLE GradeDisciplina (
    fk_Disciplina_codigo INTEGER,
    fk_Grade_codigo INTEGER
);

CREATE TABLE InstitutoUniversidade (
    fk_Instituto_Diretor_codigo INTEGER,
    fk_Instituto_Diretor_cpf VARCHAR,
    fk_Universidade_Reitor_numero_emec INTEGER
);

CREATE TABLE CoordenadorBolsa (
    fk_Bolsa_codigo INTEGER,
    fk_Historico_Aluno_numero INTEGER,
    fk_Historico_Aluno_cpf VARCHAR,
    data_cadastro DATE
);
 
ALTER TABLE Grade ADD CONSTRAINT FK_Grade_2
    FOREIGN KEY (fk_Chefe_Departamento_Curso_Coordenador_cpf, fk_Chefe_Departamento_Curso_Coordenador_codigo)
    REFERENCES Chefe_Departamento_Curso_Coordenador (cpf, codigo)
    ON DELETE RESTRICT;
 
ALTER TABLE Historico_Aluno ADD CONSTRAINT FK_Historico_Aluno_2
    FOREIGN KEY (fk_Chefe_Departamento_Curso_Coordenador_cpf, fk_Chefe_Departamento_Curso_Coordenador_codigo)
    REFERENCES Chefe_Departamento_Curso_Coordenador (cpf, codigo)
    ON DELETE CASCADE;
 
ALTER TABLE Turma ADD CONSTRAINT FK_Turma_2
    FOREIGN KEY (fk_Professor_cpf)
    REFERENCES Professor (cpf)
    ON DELETE CASCADE;
 
ALTER TABLE Turma ADD CONSTRAINT FK_Turma_3
    FOREIGN KEY (fk_Disciplina_codigo)
    REFERENCES Disciplina (codigo)
    ON DELETE CASCADE;
 
ALTER TABLE Secretaria ADD CONSTRAINT FK_Secretaria_1
    FOREIGN KEY (fk_Chefe_Departamento_Curso_Coordenador_cpf, fk_Chefe_Departamento_Curso_Coordenador_codigo)
    REFERENCES Chefe_Departamento_Curso_Coordenador (cpf, codigo)
    ON DELETE CASCADE;
 
ALTER TABLE Professor ADD CONSTRAINT FK_Professor_2
    FOREIGN KEY (fk_Departamento_codigo)
    REFERENCES ??? (???);
 
ALTER TABLE Chefe_Departamento_Curso_Coordenador ADD CONSTRAINT FK_Chefe_Departamento_Curso_Coordenador_2
    FOREIGN KEY (fk_Instituto_Diretor_codigo, fk_Instituto_Diretor_cpf)
    REFERENCES Instituto_Diretor (codigo, cpf)
    ON DELETE RESTRICT;
 
ALTER TABLE Bolsa ADD CONSTRAINT FK_Bolsa_2
    FOREIGN KEY (fk_Universidade_Reitor_numero_emec, fk_Universidade_Reitor_cpf)
    REFERENCES Universidade_Reitor (numero_emec, cpf)
    ON DELETE CASCADE;
 
ALTER TABLE AlunoTurma ADD CONSTRAINT FK_AlunoTurma_1
    FOREIGN KEY (fk_Aluno_cpf)
    REFERENCES ??? (???);
 
ALTER TABLE AlunoTurma ADD CONSTRAINT FK_AlunoTurma_2
    FOREIGN KEY (fk_Turma_codigo)
    REFERENCES Turma (codigo)
    ON DELETE SET NULL;
 
ALTER TABLE GradeDisciplina ADD CONSTRAINT FK_GradeDisciplina_1
    FOREIGN KEY (fk_Disciplina_codigo)
    REFERENCES Disciplina (codigo)
    ON DELETE RESTRICT;
 
ALTER TABLE GradeDisciplina ADD CONSTRAINT FK_GradeDisciplina_2
    FOREIGN KEY (fk_Grade_codigo)
    REFERENCES Grade (codigo)
    ON DELETE SET NULL;
 
ALTER TABLE InstitutoUniversidade ADD CONSTRAINT FK_InstitutoUniversidade_1
    FOREIGN KEY (fk_Instituto_Diretor_codigo, fk_Instituto_Diretor_cpf)
    REFERENCES Instituto_Diretor (codigo, cpf)
    ON DELETE RESTRICT;
 
ALTER TABLE InstitutoUniversidade ADD CONSTRAINT FK_InstitutoUniversidade_2
    FOREIGN KEY (fk_Universidade_Reitor_numero_emec, ???)
    REFERENCES Universidade_Reitor (numero_emec, ???)
    ON DELETE RESTRICT;
 
ALTER TABLE CoordenadorBolsa ADD CONSTRAINT FK_CoordenadorBolsa_1
    FOREIGN KEY (fk_Bolsa_codigo)
    REFERENCES Bolsa (codigo)
    ON DELETE SET NULL;
 
ALTER TABLE CoordenadorBolsa ADD CONSTRAINT FK_CoordenadorBolsa_2
    FOREIGN KEY (fk_Historico_Aluno_numero, fk_Historico_Aluno_cpf)
    REFERENCES Historico_Aluno (numero, cpf)
    ON DELETE SET NULL;