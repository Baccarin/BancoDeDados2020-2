-- Fa�a um select onde apare�a a descri��o do produto, valor financeiro em estoque (quantidadeXprcunit),
-- nome do Fabricante e o texto PEREC�VEL ou N O PEREC�VEL, de acordo com o flag PEREC�VEL. Valor (1,0)


select p.descricao,(p.quantidade*p.prcUnid) precoTotal,f.nome, 
(case when p.perecivel like "S" then "Perecivel" else "N perecivel" end) validade
from fabricante f right join produto p on p.codFabricante = f.codigo;