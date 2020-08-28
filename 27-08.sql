-- 27/08 AULA 06
-- 1
select * from aluno a where a.email is null or a.telefone is null;
-- 2 
update aluno 
set idade = idade + 1 
where dtaNascimento >= '1980-01-01 00.00.00';
-- 3 
update disciplina
set cargaHoraria = 60;

update disciplina
set cargaHoraria = 70
where id != 105441564;
-- 4
select f.nome, f.departamento_id from funcionario f 
where f.salario > 800.00;
-- 5
select f.nome, f.departamento_id from funcionario f 
where f.id = 459;
-- 6 
select f.nome, f.salario from funcionario f 
where f.salario between 950.00 and 2300.00;
-----------------------------------------------
-- EXERCICIOS PÓS AULA  27/08

-- A
select f.nome , f.cargo, f.dtcontrato from funcionario f
where f.dtcontrato between '2004-02-20 00.00.00' and '2007-05-01 00.00.00';
-- B
select f.nome , f.departamento_id from funcionario f
where f.departamento_id = 10 or f.departamento_id = 30
order by f.nome; 
-- C
select f.nome as Funcionário, f.salario as Salario_do_mes from funcionario f
where f.salario > 1500.00 and  (f.departamento_id = 10 or f.departamento_id = 30);
-- D
select f.nome, f.dtcontrato from funcionario f
where f.dtcontrato >= '2004-01-01 00.00.00';

-- 01
select f.nome , f.cargo from funcionario f
where f.cod_gerente is null;
-- 02
select f.nome from funcionario f
where f.nome like '_A%';
-- 03
select * from funcionario f
where f.nome like '%A%A%' and (f.departamento_id = 30 or f.cod_gerente = 7529)
order by f.departamento_id DESC;
-- 04
update funcionario f
set f.salario = (salario + 300.00)
where f.salario < 700.00;
-- 05 
update funcionario f
set f.salario = (f.salario + (f.salario*0.15))
where f.departamento_id = 20;













