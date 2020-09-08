create table aluno (
	matricula int unique auto_increment primary key,
	nome varchar (200),
	telefone int (10) unique,
	dtaNascimento timestamp,
	cidade varchar (100),
	email varchar(100) default 'Sem email',
	idade int (3)
);

create table disciplina(
	id int unique auto_increment primary key,
	nome varchar (100),
	numero_alunos int (3),
	turma int (4) default 1,
	cargaHoraria int (3)
);

create table matricula (
	matricula_id int not null,
	cod_disciplina int,
	dtefetivado timestamp default CURRENT_TIMESTAMP,
	PRIMARY key(matricula_id),
	foreign key (cod_disciplina) references disciplina (id)
);


create table departamento(
	id int unique auto_increment primary key,
	descricao varchar (100) default 'Sem descricao',
	sigla varchar (5) default '-----'
);

create table gerente(
	id int auto_increment primary key,
	nome varchar(100) not null
);

create table funcionario(
	id int unique auto_increment primary key,
	nome varchar (100),
	cargo varchar (100),
	salario float,
	departamento_id int,
	dtcontrato timestamp default CURRENT_TIMESTAMP,
	cod_gerente int,
	foreign key (cod_gerente) references gerente (id)
);