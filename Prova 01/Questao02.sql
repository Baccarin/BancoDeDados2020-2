insert into grupo (codGrupoPai,descricao)
values(1,"Grupo 1"),(2,"Grupo 2"),(3,"Grupo 3"),(4,"Grupo 4"),(5,"Grupo 5"),(1,"Grupo 6"),(1,"Grupo 7"),(1,"Grupo 8"),(3,"Grupo 9"),
(3,"Grupo 10"),(5,"Grupo 11"),(4,"Grupo 12"),(3,"Grupo 13"),(3,"Grupo 14");
insert into grupo (descricao)
values ("Grupo A"),("Grupo B"),("Grupo C"),("Grupo D"),("Grupo E"),("Grupo F"),("Grupo G"),("Grupo H");

insert into estado (nome,sigla)
values ("Rio de Janeiro","RJ"),("São Paulo","SP"),("Minas Gerais","MG"),("Rio Grande do Sul","RS" );

insert into cidade (nome,codEstado)
values ("Pelotas",(select e.codigo from estado e where e.sigla like "RS")),
 ("Porto Alegre",(select e.codigo from estado e where e.sigla like "RS")),
 ("Gramado",(select e.codigo from estado e where e.sigla like "RS")),
 ("Belo Horizonte",(select e.codigo from estado e where e.sigla like "MG")), 
 ("Ubá",(select e.codigo from estado e where e.sigla like "MG")),
 ("Ponte Nova",(select e.codigo from estado e where e.sigla like "MG")),
 ("São Paulo",(select e.codigo from estado e where e.sigla like "SP")),
 ("Cubatão",(select e.codigo from estado e where e.sigla like "SP")),  
 ("Itu",(select e.codigo from estado e where e.sigla like "SP")),
 ("Rio de Janeiro",(select e.codigo from estado e where e.sigla like "RJ")),  
 ("Paraty",(select e.codigo from estado e where e.sigla like "RJ")), 
 ("Niterói",(select e.codigo from estado e where e.sigla like "RJ"));

insert into fabricante (nome,endereco,codCidade)
values ("Guilherme Moura","Rua 1 com Rua 7",(select c.codigo from cidade c where c.nome like "Pelotas")),
("Gilberto silva ","Rua 3 com Rua 2",(select c.codigo from cidade c where c.nome like "Porto Alegre")), 
("Mariana tesla","Avenida Jorge Jesus",(select c.codigo from cidade c where c.nome like "Gramado")),
("Andrea gm","Beco 7 ao lado da Padaria Vida ao Lado",(select c.codigo from cidade c where c.nome like "Rio de Janeiro")),
("Débora Bmw","Apartamento Azul 4356 AP 12A",(select c.codigo from cidade c where c.nome like "Belo Horizonte")),
("Regina Ka","Apartamento Verde 322 AP 41A",(select c.codigo from cidade c where c.nome like "Belo Horizonte")),
("Jorge Ford","Rua Andrade Neves 342",(select c.codigo from cidade c where c.nome like "Itu")),
("Marcos honda","Ao lado do Shopping Zona Norte 213",(select c.codigo from cidade c where c.nome like "Paraty"));

insert into faixaProduto (categoria,valorInicial,valorFinal)
values ("C",0.00,5000.00),("B",5001.00,10000.00),("A",10001.00,99999999.00);

insert into produto (descricao,dtaUltCompra,quantidade,prcUnid,perecivel,codGrupo,codFabricante)
values ("Margarina",'2010-05-10',100,50.00,"S",1,9),("Borracha",'2010-05-10',100,50.00,"S",1,10),("Pastel",'2010-05-10',100,50.00,"S",1,11),
("Teclado",'2018-02-16',10000,1.19,"S",2,10),("Melão",'2008-02-16',10000,10.19,"S",2,13),("Chocolate",'2018-02-16',10000,10.19,"S",2,13),
("Verme",'2020-10-06',12500,100.99,"N",3,16),("Banana",'2008-12-06',12500,2.50,"N",3,15),("Abacaxi",'2020-12-06',12500,2.50,"N",2,16),
("Bola",'2020-12-09',12500,7.50,"N",1,11),("Escola",'2009-02-26',12500,2.50,"N",3,15),("Peixe",'2019-02-26',12500,2.50,"N",4,10),
("Maça",'2009-07-26',12500,8.50,"S",1,9),("Margarina",'2010-05-10',100,50.00,"S",1,9),("Garrafa",'2010-05-10',100,50.00,"S",1,11),("Margarina",'2010-05-10',100,50.00,"S",1,11),
("Escada",'2018-12-16',10000,0.99,"S",2,10),("Grama",'2011-02-16',10000,10.19,"S",2,13),("Carne",'2018-02-16',10000,10.19,"S",2,09),
("Biscoito",'2020-01-06',12500,129,"N",5,10),("Suco",'2016-12-06',12500,2.50,"N",3,15),("Faca",'2020-12-06',12500,2.50,"N",2,10),
("Bolacha",'2020-12-06',12500,150,"N",3,12),("Agua",'2017-02-06',12500,2.50,"N",3,15),("Garfo",'2019-02-26',12500,2.50,"N",4,13),
("Mouse",'2009-01-06',12500,0.50,"S",4,10),("Sabonete",'2010-05-10',100,10.00,"S",1,15),("Faca",'2010-05-10',100,50.00,"S",1,10),("Margarina",'2010-05-10',100,50.00,"S",1,11),
("Caneta",'2018-01-16',10000,50.99,"S",3,12),("Shampoo",'2018-02-16',10000,210.19,"S",2,13),("Leite",'2018-02-16',10000,10.19,"S",2,14),
("Pão",'2019-01-06',12500,10.99,"S",3,14),("Cartolina",'2020-12-06',12500,12.50,"N",4,15),("Refrigerante",'2020-12-06',12500,2.50,"N",2,16),
("Patê",'2018-07-06',12500,20.50,"S",2,13),("Papel",'2019-02-26',12500,32.50,"N",4,15),("Sacola",'2019-02-26',12500,2.50,"N",4,15),
("Abacate",'2009-02-26',12500,2.50,"S",1,15);

