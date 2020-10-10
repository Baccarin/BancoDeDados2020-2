-- Classificar todos os produtos através do seu valor financeiro (quantidadeXprcunit) em faixas,
-- de acordo com as faixas cadastradas na FAIXAPRODUTO (precisa utilizar esta tabela). Valor (1,0)

select p.descricao, f.categoria from produto p, faixaproduto f
where (p.prcUnid * p.quantidade) between f.valorInicial and f.valorFinal
group by p.descricao
order by p.descricao;
