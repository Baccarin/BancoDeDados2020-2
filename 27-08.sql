-- 1
select * from aluno a where a.email is null or a.telefone is null;
-- 2 
update aluno 
set idade = idade + 1 
where dtaNascimento >= '1980-01-01 00.00.00';
-- 3 
update disciplina
set cargaHoraria = 60;
-- 4
select f.nome, f.departamento_id from funcionario f 
where f.salario > 800.00;
-- 5
select f.nome, f.departamento_id from funcionario f 
where f.id = 459;
-- 6 
select f.nome, f.salario from funcionario f 
where f.salario between 950.00 and 2300.00;
