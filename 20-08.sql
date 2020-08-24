create table aluno (
	matricula int unique auto_increment primary key,
	nome varchar (200),
	telefone int (10),
	dtaNascimento timestamp,
	cidade varchar (100),
	email varchar(100),
	idade NUMERIC (3)
);


insert into aluno (nome,telefone,dtaNascimento,cidade)
values ("Guilherme", 3253116,current_date,"Pelotas");

select * from aluno;


------------------------------------------------------------


create table matricula (
	matricula_id int not null,
	cod_disciplina int,
	dtefetivado timestamp default CURRENT_TIMESTAMP,
	PRIMARY key(matricula_id,cod_disciplina)
);

insert into matricula (matricula_id)
values (1);

select * from matricula;

------------------------------------------------------------

create table disciplina(
	id int unique auto_increment,
	nome varchar (100),
	numero_alunos int (3),
	turma int (4),
	cargaHoraria int (3)
);


insert into disciplina(nome,cargaHoraria)
values ("Banco de dados",10);

select * from disciplina;


------------------------------------------------------------

create table departamento(
	id int unique auto_increment primary key,
	descricao varchar (100),
	sigla varchar (5) default "None"
);

select * from departamento;

------------------------------------------------------------

create table funcionario(
	id int unique auto_increment primary key,
	nome varchar (100),
	cargo varchar (100),
	salario int,
	departamento_id int,
	dtcontrato timestamp default CURRENT_TIMESTAMP,
	cod_gerente int ,
	FOREIGN KEY (departamento_id) REFERENCES departamento(id)
);


select * from funcionario;

------------------------------------------------------------

drop table matricula;
drop table aluno;
drop table funcionario;
drop table departamento;
drop table disciplina;


