-- Selecione os produtos de um determinado fornecedor com preços acima da média dos preços 
-- de todos os produtos que este fornecedor produz. Valor (1,0)

select p.* from produto p left join fabricante f on f.codigo = p.codFabricante
where f.nome like "Guilherme" and p.prcUnid > (select avg(p1.prcUnid) from produto p1 where p1.codFabricante = p.codFabricante);
