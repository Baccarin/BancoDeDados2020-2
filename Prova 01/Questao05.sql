-- Informe os grupos de produtos com o total financeiro (quantidadeXprcunit) por grupo em estoque.
-- Devem aparecer 2 colunas (descrição do grupo e valor financeiro total. A ordem deve ser decrescente pelo valor financeiro.
-- Grupos que não atingirem o montante superior a R$ 10.000,00 não devem aparecer. Valor (1,0)

select g.descricao, sum(p.prcUnid * p.quantidade) valorTotal from grupo g right join produto p on p.codGrupo = g.codigo
where (select sum(p.prcUnid*p.quantidade) from grupo g1 where g.codigo = g1.codigo) > 10000
group by g.descricao
order by sum(p.prcUnid * p.quantidade) desc;
