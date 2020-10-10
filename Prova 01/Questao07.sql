-- Fa�a uma atualiza��o na tabela de Fornecedores, for�ando todos os endere�os a ficarem apenas com as primeiras letras em mai�sculas.
-- Ex. (RUA FERNANDO OS�RIO ou rua fernando os�rio => Rua Fernando Os�rio). Valor (1,0)


update fabricante
set nome = 
CONCAT(
    UPPER(SUBSTRING(nome,1,1)),
    LOWER(SUBSTRING(nome,2,Locate(' ', nome)-1)),
    UPPER(SUBSTRING(nome,Locate(' ', nome)+1,1)),
    LOWER(SUBSTRING(nome,Locate(' ', nome)+2)))
FROM fabricante;
