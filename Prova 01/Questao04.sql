-- Faça um select onde apareça a descrição do produto, valor financeiro em estoque (quantidadeXprcunit),
-- nome do Fabricante e o texto PERECÍVEL ou N O PERECÍVEL, de acordo com o flag PERECÍVEL. Valor (1,0)


select p.descricao,(p.quantidade*p.prcUnid) precoTotal,f.nome, 
(case when p.perecivel like "S" then "Perecivel" else "N perecivel" end) validade
from fabricante f right join produto p on p.codFabricante = f.codigo;