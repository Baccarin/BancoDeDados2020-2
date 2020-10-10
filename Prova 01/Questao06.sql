-- Faça um select que retorne todos os Estados, sem repeti-los, dos produtos do grupo BEBIDAS adquiridos em 2008. Valor (1,0)

select e.* from estado e left join cidade c on c.codEstado = e.codigo
right join fabricante f on f.codCidade = c.codigo
right join produto p on p.codFabricante = f.codigo
right join grupo g on g.codigo = p.codGrupo
where g.descricao like "Grupo 1" and p.dtaUltCompra between '2008-01-01' and '2025-01-01'
group by e.nome;