CREATE TABLE Universidade_Reitor(
pk_numero_emec_univ integer,
end_rua_univ varchar(50),
end_numero_univ integer,
end_bairro_univ varchar(30),
end_cidade_univ varchar(30),
end_estado_univ varchar(2),
end_cep_univ varchar(9),
cadastro_reitor integer,
login_reitor varchar(30),
senha_reitor varchar(40),
cpf_reitor varchar(11),
idade_reitor integer,
nome_reitor varchar(50),
sexo_reitor char(1),
data_entrada_universidade_reitor date,
PRIMARY KEY(pk_numero_emec_univ)
);

CREATE TABLE Instituto_Diretor(
pk_codigo_instituto integer,
fk_numero_emec_univ integer,
nome_instituto varchar(50),
data_fundacao_instituto date,
login_diretor varchar(30),
senha_diretor varchar(40),
cpf_diretor varchar(11),
sexo_diretor char(1),
idade_diretor integer,
nome_diretor varchar(50),
numero_diretor integer,
data_inicio_instituto_diretor date,
PRIMARY KEY(pk_codigo_instituto),
FOREIGN KEY(fk_numero_emec_univ)
	REFERENCES Universidade_Reitor(pk_numero_emec_univ)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT
);


CREATE TABLE Curso_Coordenador_Departamento_Chefe (
pk_codigo_curso integer,
fk_codigo_instituto integer,
codigo_dept integer UNIQUE,
id_coordenador integer,
login_coordenador varchar(30),
senha_coordenador varchar(40),
idade_coordenador integer,
cpf_coordenador varchar(11),
nome_coordenador varchar(50),
sexo_coordenador char(1),
nome_curso varchar(30),
qtd_semestres_curso integer,
turno_curso varchar(20),
nome_dept varchar(40),
data_fundacao_dept date,
end_rua_dept varchar(50),
end_numero_dept integer,
end_bairro_dept varchar(30),
end_cidade_dept varchar(30),
end_estado_dept varchar(2),
end_cep_dept varchar(9),
codigo_chefe integer,
login_chefe varchar(30),
senha_chefe varchar(40),
idade_chefe integer,
cpf_chefe varchar(11),
nome_chefe varchar(50),
sexo_chefe char(1),
data_entrada_dept_chefe date,
data_inicio_curso_coordenador date,
PRIMARY KEY(pk_codigo_curso),
FOREIGN KEY(fk_codigo_instituto)
	REFERENCES Instituto_Diretor(pk_codigo_instituto)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT
);

CREATE TABLE Secretaria (
pk_registro_secretaria integer,
fk_codigo_dept integer,
setor_secretaria varchar(30),
PRIMARY KEY(pk_registro_secretaria),
FOREIGN KEY(fk_codigo_dept)
	REFERENCES Curso_Coordenador_Departamento_Chefe(codigo_dept)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT
);

CREATE TABLE Grade(
pk_codigo_grade integer,
fk_codigo_curso integer,
ano_registro_grade DATE,
PRIMARY KEY(pk_codigo_grade),
FOREIGN KEY(fk_codigo_curso)
	REFERENCES Curso_Coordenador_Departamento_Chefe(pk_codigo_curso)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT
);


CREATE TABLE Disciplina(
pk_codigo_disciplina integer,
nome_disciplina varchar(30),
PRIMARY KEY(pk_codigo_disciplina)
);


CREATE TABLE Grade_Disciplina(
pk_fk_codigo_grade integer,
pk_fk_codigo_disciplina integer,
PRIMARY KEY(pk_fk_codigo_grade,pk_fk_codigo_disciplina),
FOREIGN KEY(pk_fk_codigo_grade)
	REFERENCES Grade(pk_codigo_grade)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT,
FOREIGN KEY(pk_fk_codigo_disciplina)
	REFERENCES Disciplina(pk_codigo_disciplina)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT
);

CREATE TABLE Bolsa(
pk_codigo_bolsa integer,
fk_numero_emec_univ integer,
remuneracao_bolsa float,
qtd_semestres_bolsa integer,
PRIMARY KEY(pk_codigo_bolsa),
FOREIGN KEY(fk_numero_emec_univ)
	REFERENCES Universidade_Reitor(pk_numero_emec_univ)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT
);

CREATE TABLE Aluno_Historico(
pk_cpf_aluno varchar(11),
fk_codigo_curso integer,
login_aluno varchar(30),
senha_aluno varchar(40),
idade_aluno integer,
nome_aluno varchar(50),
sexo_aluno char(1),
matricula_aluno varchar(10),
formacao_aluno varchar(30),
IRA_historico float,
numero_historico integer,
data_entrada_aluno_curso date,
PRIMARY KEY(pk_cpf_aluno),
FOREIGN KEY(fk_codigo_curso)
	REFERENCES Curso_Coordenador_Departamento_Chefe(pk_codigo_curso)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT
);

CREATE TABLE Professor(
pk_cpf_professor varchar(11),
fk_codigo_dept integer,
login_professor varchar(30),
senha_professor varchar(40),
idade_professor integer,
sexo_professor char(1),
codigo_professor integer,
formacao_professor varchar(30),
nome_professor varchar(50),
data_inicio_professor_departamento date,
horas_professor_departamento integer,
PRIMARY KEY(pk_cpf_professor),
FOREIGN KEY(fk_codigo_dept)
	REFERENCES Curso_Coordenador_Departamento_Chefe(codigo_dept)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT
);

CREATE TABLE Turma(
pk_codigo_turma integer,
fk_codigo_disciplina integer,
fk_cpf_professor varchar(11),
turno_turma varchar(20),
capacidade_turma integer,
PRIMARY KEY(pk_codigo_turma),
FOREIGN KEY(fk_codigo_disciplina)
	REFERENCES Disciplina(pk_codigo_disciplina)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT,
FOREIGN KEY(fk_cpf_professor)
	REFERENCES Professor(pk_cpf_professor)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT
);


CREATE TABLE Aluno_Bolsa(
pk_fk_codigo_bolsa integer,
pk_fk_cpf_aluno varchar(11),
data_cadastro_aluno_bolsa date,
PRIMARY KEY(pk_fk_codigo_bolsa,pk_fk_cpf_aluno),
FOREIGN KEY(pk_fk_codigo_bolsa)
	REFERENCES Bolsa(pk_codigo_bolsa)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT,
FOREIGN KEY(pk_fk_cpf_aluno)
	REFERENCES Aluno_Historico(pk_cpf_aluno)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT
);



CREATE TABLE Aluno_Turma(
pk_fk_codigo_turma integer,
pk_fk_cpf_aluno varchar(11),
PRIMARY KEY(pk_fk_codigo_turma,pk_fk_cpf_aluno),
FOREIGN KEY(pk_fk_codigo_turma)
	REFERENCES Turma(pk_codigo_turma)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT,
FOREIGN KEY(pk_fk_cpf_aluno)
	REFERENCES Aluno_Historico(pk_cpf_aluno)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT
);

