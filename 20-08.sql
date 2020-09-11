create table aluno (
	matricula int unique auto_increment primary key,
	nome varchar (200),
	telefone int (10) unique,
	dtaNascimento timestamp,
	cidade varchar (100),
	email varchar(100),
	idade NUMERIC (3)
);


insert into aluno (nome,telefone,dtaNascimento,cidade)
values ("Maria", 3333316,current_date,"Pelotas");

insert into aluno (nome,telefone,dtaNascimento,cidade)
values ("Ricardo", 3122316,current_date,"Rio Grande");

insert into aluno (nome,telefone,dtaNascimento,cidade)
values ("Marcos", 3436736,current_date,"Rio Grande");

insert into aluno (nome,telefone,dtaNascimento,cidade)
values ("Juliana", 3251123,current_date,"Pelotas");

insert into aluno (nome,telefone,dtaNascimento,cidade)
values ("Guilherme", 3263216,current_date,"Rio Grande");

insert into aluno (nome,telefone,dtaNascimento,cidade)
values ("Débora", 3157416,current_date,"Pelotas");

insert into aluno (nome,telefone,dtaNascimento,cidade)
values ("Sem ideia mais", 30264587,current_date,"Pelotas");

update aluno
set idade = 20

select * from aluno;

------------------------------------------------------------
create table disciplina(
	id int unique auto_increment,
	nome varchar (100),
	numero_alunos int (3),
	turma int (4) default 1,
	cargaHoraria int (3)
);

insert into disciplina(nome,cargaHoraria)
values ("Banco de dados",10);

insert into disciplina(nome,cargaHoraria)
values ("Alga",40);

insert into disciplina(nome,cargaHoraria)
values ("Calculo",30);

insert into disciplina(nome,cargaHoraria)
values ("Projeto",50);

insert into disciplina(nome,cargaHoraria)
values ("Nao sei",100);

select * from disciplina;


------------------------------------------------------------
create table matricula (
	matricula_id int not null,
	cod_disciplina int,
	dtefetivado timestamp default CURRENT_TIMESTAMP,
	foreign key (matricula_id) references aluno (matricula),
	foreign key (cod_disciplina) references disciplina (id)
	);

insert into matricula (matricula_id,cod_disciplina)
values (1,2);

insert into matricula (matricula_id,cod_disciplina)
values (1,3);

insert into matricula (matricula_id,cod_disciplina)
values (1,4);

insert into matricula (matricula_id,cod_disciplina)
values (2,1);

insert into matricula (matricula_id,cod_disciplina)
values (2,2);

insert into matricula (matricula_id,cod_disciplina)
values (3,1);

insert into matricula (matricula_id,cod_disciplina)
values (3,3);

insert into matricula (matricula_id,cod_disciplina)
values (4,3);

select * from matricula;

------------------------------------------------------------

------------------------------------------------------------

create table departamento(
	id int unique auto_increment primary key,
	descricao varchar (100),
	sigla varchar (5) default "None"
);

insert into departamento(descricao)
values("Recursos Humanos");

insert into departamento(descricao,sigla)
values("Nao sei 1", "NS1");

insert into departamento(descricao,sigla)
values("Nao sei 2", "NS2");

insert into departamento(descricao,sigla)
values("Nao sei 3", "NS3");

select * from departamento;

------------------------------------------------------------

create table funcionario(
	id int unique auto_increment primary key,
	nome varchar (100),
	cargo varchar (100),
	salario float,
	departamento_id int,
	dtcontrato timestamp default CURRENT_TIMESTAMP,
	cod_gerente int 
);

insert into funcionario(nome,cargo,salario,departamento_id)
values ("Jorge","Estagiario",100.00,1);

insert into funcionario(nome,cargo,salario,departamento_id)
values ("Nao sei","Tambem nao sei",5500.00,6);

insert into funcionario(nome,cargo,salario,departamento_id)
values ("Mario","Estagiario",1020.00,1);

insert into funcionario(nome,cargo,salario,departamento_id)
values ("Guilherme","Faz tudo",1000.00,5);

insert into funcionario(nome,cargo,salario,departamento_id)
values ("Tobe","Estagiario",500.00,1);

insert into funcionario(nome,cargo,salario,departamento_id)
values ("Maria","Estagiario",1030.00,2);

select * from funcionario;

------------------------------------------------------------
-- 1
select * from funcionario;
-- 2
select nome, matricula from aluno;
-- 3
select nome,id as codigo, salario , (salario + (salario/100)) as novo_salario from funcionario;
-- 4 
select distinct sigla from departamento;

-- A
select distinct descricao as nomedepartamento, sigla as codigoreduzido from departamento;
-- B
select distinct idade from aluno;
-- C
select matricula,nome,(idade + 2) as provavel_idade_formando from aluno;
-- D
select concat ("Aluno: " ,a.nome," nascido em: ",a.dtaNascimento," com idade aproximada de: ",(a.idade + 5))  from aluno a

