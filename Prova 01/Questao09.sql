-- Informe uma lista de fabricantes e seus produtos.
-- O fabricante deve aparecer na listagem, mesmo que não possua produto. Valor (1,0)


select f.nome, p.descricao,p.codigo from fabricante f left join produto p on p.codFabricante = f.codigo;