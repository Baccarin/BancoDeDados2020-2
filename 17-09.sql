create table categoria_salario(
	id int auto_increment primary key,
	menor numeric (12,2),
	maior numeric (12,2),
	categoria char(1)
);

insert into categoria_salario (menor,maior,categoria)
values (450,900,'A'),(901,1100,'B'),(1101,1500,'C'),(1501,5000,'D');


-- 1 OK
-- Crie uma consulta para exibir o nome e a data de admiss�o de todos os funcion�rios no mesmo departamento que Maria, excluindo Maria. 
-- (Fa�a de duas formas, uma usando o IN e outra usando EXISTS)

select f.nome, f.dtcontrato from funcionario f where f.departamento_id = (select func.departamento_id from funcionario func where func.nome like 'Tobe') 
and f.nome in (select f2.nome from funcionario f2 where f2.nome <> 'Tobe');

select f.nome, f.dtcontrato from funcionario f where f.departamento_id = (select func.departamento_id from funcionario func where func.nome like 'Tobe') 
and exists (select * from funcionario where f.nome <> 'Tobe') 

-- 2 OK
-- Crie uma consulta para exibir o c�digo e o nome de todos os funcion�rios que recebem mais que o sal�rio m�dio. 
-- Classifique os resultados, por sal�rio, em ordem decrescente.
select distinct(f.id),f.nome, f.salario,cat.categoria from funcionario f,categoria_salario cat 
where f.salario < (select avg(func.salario) from funcionario func) and f.salario between cat.menor and cat.maior
order by f.salario desc;

-- 3 OK
-- Crie uma consulta que exiba o c�digo e o nome de todos os funcion�rios que trabalhem em um departamento,
-- onde exista um funcion�rio que possua a letra 'W' no nome.
select f.id , f.nome ,f.departamento_id from funcionario f where f.departamento_id
in (select func.departamento_id from funcionario func where func.nome like '%E');

-- 4 OK
-- Crie uma consulta para exibir o nome, a data de admiss�o e o 
-- sal�rio de todos os funcion�rios que ganhem mais que a m�dia de sal�rio de todos os departamentos.
select f.nome , f.id, f.salario from funcionario f where f.salario > (select avg(func.salario) from funcionario func);

-- 5 OK
-- Selecione todos os gerentes que possuem efetivamente subordinados.
select id,nome from funcionario gerente
where exists (select 1 from funcionario f where f.cod_gerente = gerente.id);

-- 6 OK
-- Selecione todos os colegas de 'MARIA' em todas as disciplinas que ela esta matriculada, 
-- de acordo com a �matricula� realizada na tabela aluno_disciplina. (Fa�a de duas formas, uma usando o IN e outra usando EXISTS)

select a.nome from aluno a right join matricula mat on mat.matricula_id = a.matricula
where mat.cod_disciplina in 
				(select mat1.cod_disciplina from matricula mat1 left join aluno aluno on aluno.matricula = mat1.matricula_id
				where aluno.nome like 'Maria') and a.nome <> 'Maria'
group by a.matricula;

select a.nome from aluno a right join matricula mat on mat.matricula_id = a.matricula
where exists (select mat1.cod_disciplina from matricula mat1 left join aluno aluno on aluno.matricula = mat1.matricula_id
				where aluno.nome like 'Maria') and a.nome <> 'Maria'
group by a.nome;
