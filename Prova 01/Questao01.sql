create table grupo (
	codigo int primary key auto_increment,	
	codGrupoPai int,
	descricao varchar(200) not null,
	foreign key (codGrupoPai) references grupo(codigo)
);


create table faixaProduto(
	codigo int primary key auto_increment,
	categoria varchar(2),
	valorInicial double,
	valorFinal double
);

create table estado(
	codigo int primary key auto_increment,
	nome varchar(100) not null,
	sigla vachar(5) not null
);

create table cidade(
	codigo int primary key auto_increment,
	nome varchar(200) not null,	
	codEstado int not null,
	foreign key (codEstado) references estado(codigo)
);


create table fabricante(
	codigo int primary key auto_increment,
	nome varchar(200) not null,
	endereco varchar(200),
	codCidade int not null,
	foreign key (codCidade) references cidade(codigo)
);

create table produto (
	codigo int primary key auto_increment,
	descricao varchar (200) not null,
	dtaUltCompra date,
	quantidade int,
	prcUnid double,
	perecivel varchar(1) CHECK (perecivel like 'S' or perecivel like 'N'),
	codGrupo int,
	codFabricante int,
	FOREIGN KEY (codGrupo) REFERENCES grupo(codigo)
	FOREIGN KEY (codFabricante) REFERENCES fabricante(codigo)		
);

