-- 1
select f.nome , d.descricao from funcionario f left join departamento d on f.departamento_id = d.id;

-- 2
select f.cargo,d.descricao from funcionario f right join departamento d on d.id = f.departamento_id
where d.sigla like "NS1";

-- 3
select m.cod_disciplina,count(a.matricula) from matricula m inner join aluno a on m.matricula_id = a.matricula
group by m.cod_disciplina
order by m.cod_disciplina;

-- 4
select f.nome, d.descricao from funcionario f left join departamento d on f.departamento_id = d.id
where f.nome like "%A%";

-- 5
select f.* from funcionario f left join departamento d on d.id = f.departamento_id
where f.salario > 1000.00 and d.sigla like "NS%";

-- 6 
select a.nome,a.matricula,sum(d.cargaHoraria) carga_total from aluno a left join matricula m on m.matricula_id = a.matricula 
left join disciplina d on d.id = m.cod_disciplina
group by a.nome;

-- A
SELECT d.descricao , d.sigla, count(f.id) n_func ,avg(f.salario) media FROM departamento d left join funcionario f on f.departamento_id = d.id
group by d.id;

-- B

-- C
create table nivel(
	id int auto_increment primary key,
	nivel char(2)
);

insert into nivel(nivel)
values ('A'),('B'),('C'),('D');

create table aluno_nivel(
	aluno_matricula int,
	nivel_id int,
	foreign key (aluno_matricula) references aluno (matricula),
	foreign key (nivel_id) references nivel (id)
);

insert into aluno_nivel (aluno_matricula,nivel_id)
values(6,1),(7,1),(3,2),(4,2),(5,2),(1,4),(2,4);

-- usado pra ver o id dos alunos pra alimentar a aluno_faixa
select matricula from aluno
where idade between 10 and 15

select a.nome,f.nivel from aluno a left join aluno_faixa af on af.aluno_matricula = a.matricula
left join faixanivel f on f.id = af.nivel_id;

-- D
select * from disciplina


select d.nome, count(a.matricula) from matricula m right join aluno a on m.matricula_id = a.matricula
right join disciplina d on d.id = m.cod_disciplina
group by m.cod_disciplina
order by m.cod_disciplina;

select d.id,d.nome, count(a.matricula) from disciplina d left join matricula m on m.cod_disciplina = d.id
left join aluno a on a.matricula = m.matricula_id
group by m.cod_disciplina
order by m.cod_disciplina


insert into disciplina (nome,numero_alunos,turma,cargaHoraria)
values ("Teste")

select * from aluno_faixa

select * from aluno

select * from faixanivel

select *  from departamento

select * from matricula

select * from disciplina

select * from funcionario