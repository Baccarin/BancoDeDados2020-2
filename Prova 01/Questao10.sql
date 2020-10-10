-- Selecione todos os grupos e seus subgrupos, apresentando os grupos, mesmo quando não existam subgrupos. Valor (1,0)


select g.* from grupo g left join grupo subg on g.codigo = subg.codGrupoPai
order by g.codGrupoPai;
