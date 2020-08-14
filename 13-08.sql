create table aluno (
	matricula int unique auto_increment primary key,
	nome varchar (200),
	telefone int (10),
	dtaNascimento date,
	cidade varchar (100)
);

alter table aluno add column email varchar(100);

alter table aluno add column idade numeric (3);

ALTER TABLE aluno MODIFY dtanascimento timestamp;

insert into aluno (nome,telefone,dtaNascimento,cidade)
values ("Guilherme", 3253116,current_date,"Pelotas");

select * from aluno;


------------------------------------------------------------


create table matricula (
	matricula_id int not null,
	FOREIGN KEY (matricula_id) REFERENCES aluno(matricula)
);

alter table matricula
add column cod_disciplina int; 

alter table matricula
add FOREIGN KEY (cod_disciplina) REFERENCES disciplina(id);

alter table matricula
add column dtefetivado timestamp default CURRENT_TIMESTAMP;

insert into matricula (matricula_id)
values (1);

select * from matricula;

------------------------------------------------------------

create table disciplina(
	id int unique auto_increment,
	nome varchar (100),
	cargaHoraria int
);

alter table disciplina
add column numero_alunos int(3);
	
alter table disciplina
add column 	turma int(4);

insert into disciplina(nome,cargaHoraria)
values ("Banco de dados",10);

select * from disciplina;


------------------------------------------------------------

create table departamento(
	id int unique auto_increment primary key,
	descricao varchar (100)
);

alter table departamento 
add column sigla varchar (5) default "None";

select * from departamento;

------------------------------------------------------------

create table funcionario(
	id int unique auto_increment primary key,
	nome varchar (100),
	cargo varchar (100),
	salario int,
	departamento_id int,
	FOREIGN KEY (departamento_id) REFERENCES departamento(id)
);

alter table funcionario
add column dtcontrato timestamp default CURRENT_TIMESTAMP;

alter table funcionario
add column cod_gerente int;

select * from funcionario;

------------------------------------------------------------

drop table matricula;
drop table aluno;
drop table funcionario;
drop table departamento;
drop table disciplina;


