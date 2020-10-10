-- Faça uma atualização na tabela de Fornecedores, forçando todos os endereços a ficarem apenas com as primeiras letras em maiúsculas.
-- Ex. (RUA FERNANDO OSÓRIO ou rua fernando osório => Rua Fernando Osório). Valor (1,0)


update fabricante
set nome = 
CONCAT(
    UPPER(SUBSTRING(nome,1,1)),
    LOWER(SUBSTRING(nome,2,Locate(' ', nome)-1)),
    UPPER(SUBSTRING(nome,Locate(' ', nome)+1,1)),
    LOWER(SUBSTRING(nome,Locate(' ', nome)+2)))
FROM fabricante;
