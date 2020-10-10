-- Faça uma consulta que apresente o nome do fabricante dos estados de SP e RJ de produtos comprados entre janeiro e junho de 2009 inclusive.
-- Ordene pela data de forma crescente. Valor (1,0)


select f.nome, e.nome , p.codigo from fabricante f right join produto p on p.codFabricante = f.codigo
left join cidade c on c.codigo = f.codCidade
left join estado e on e.codigo = c.codEstado
where e.sigla like "SP" or e.sigla like "RJ"
and p.dtaUltCompra between '2009-01-01' and '2009-07-01'
group by f.nome;
