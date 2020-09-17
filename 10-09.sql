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

select a.nome, n.nivel from aluno a left join aluno_nivel af on af.aluno_matricula = a.matricula
left join nivel n on n.id = af.nivel_id;

-- D
select d.id,d.nome, coalesce(count(a.matricula),0) numero_alunos from disciplina d left join matricula m on m.cod_disciplina = d.id
left join aluno a on a.matricula = m.matricula_id
group by d.id
order by d.id;

-- E
select a.nome,coalesce(d.nome,"Sem matricula") disciplinas from aluno a left join matricula m on m.matricula_id = a.matricula 
left join disciplina d on d.id = m.cod_disciplina;

-- 01
select f.nome , coalesce(g.nome,"Sem gerente") gerente from funcionario f left join gerente g on g.id = f.cod_gerente;

-- 02
select a.nome from aluno a
union all
select f.nome from funcionario f;

-- 03
select a.nome from aluno a
union
select f.nome from funcionario f;

-- 04
select concat(a.nome , " está matriculada(o) em: ", coalesce(d.nome,"Sem disciplinas")) from aluno a 
left join matricula m on m.matricula_id = a.matricula 
left join disciplina d on d.id = m.cod_disciplina;

-- 05
select concat("insert into aluno (nome,telefone,cidade,email,idade) values (", a.nome, " ," ,
a.telefone, " ,", a.cidade, " ," ,a.email, " ,", a.cidade, ");")
from aluno a
union all 
select concat("insert into funcionario (nome,cargo,salario,departamento_id,cod_gerente) values(",f.nome," ,",f.cargo," ,",f.salario," ,",
f.departamento_id, ");")
from funcionario f
