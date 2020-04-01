create database aula4

create table autor
(
cod_autor int not null,
nome_autor varchar(40) not null,
fone_autor varchar(20) null,
primary key(cod_autor)
);

insert into autor (cod_autor,nome_autor,fone_autor) values (1,'José','3262-000');
insert into autor (cod_autor,nome_autor) values (2,'João');
insert into autor values (3,'Maria','3262-0000');insert into autor values (4,'Ana',NULL);
select * from autor

create table autor_tmp
(
cod_autor int not null,
nome_autor varchar(40) not null,
fone_autor varchar(20) null,
primary key(cod_autor)
);

insert into autor_tmp
select * from autor;

select * from autor
select * from autor_tmp

create table autor2
(
codigo int not null,
nome varchar(40) not null,
telefone varchar(20) null,
email varchar(18) null,
primary key(codigo)
);

insert into autor2(codigo,nome,telefone)
select cod_autor,nome_autor,fone_autor from autor;

select * from autor
select * from autor2

create table autor3
(
codigo int not null,
nome varchar(40) not null,
telefone varchar(20) null,
email varchar(18) null,
primary key(codigo)
);
insert into autor3(codigo,nome,telefone)
select cod_autor,nome_autor,fone_autor from autor
where cod_autor <=2;
select * from autor
select * from autor3

create table gravadora
(
codigo_gravadora int not null,
nome_gravadora varchar(60) null,
endereco varchar(60) null,
telefone varchar(20) null,
contato varchar(30) null,
primary key (codigo_gravadora)
);

insert into gravadora values (1,'EMI',null,null,null);
insert into gravadora values (2,'SOM LIVRE',null,null,null);
insert into gravadora values (3,'RECORD',null,null,null);
create table cd
(
codigo_cd int not null,
codigo_gravadora int not null,
nome_cd varchar(60) null,
preco_venda decimal(9,2) null,
data_lancamento datetime null,
cd_indicado int null,
primary key (codigo_cd),
foreign key (codigo_gravadora) references gravadora(codigo_gravadora)
);

insert into cd values (1,1,'Ainda é cedo',35.00,null,null);
insert into cd values (2,2,'Mais do Mesmo',35.00,null,null);
insert into cd values (3,2,'Será',35.00,null,null);
insert into cd values (4,3,'Renato Russo',35.00,null,null);

select * from gravadora;
select * from cd;
update cd set preco_venda = 55.00
where codigo_cd = 1select * from cd;

update cd set preco_venda = 20.00
where codigo_gravadora = 2;select * from cd;

update cd set preco_venda = preco_venda * 1.05
where codigo_gravadora = 2;
select * from cd;

update gravadora
set endereco = 'Av Duque de Caxias', Contato='Gabriela'
where codigo_gravadora = 1;select * from gravadora;

update cd
set preco_venda = preco_venda * 1.05;
select * from cd;

drop table autor

create table autor
(
cod_autor int not null,
nome_autor varchar(40) not null,
primary key(cod_autor)
);insert into autor values (1,'Diana');
insert into autor values (2,'Ana');
insert into autor values (3,'Marcia');
insert into autor values (4,'Bia');
insert into autor values (5,'Sueli');
insert into autor values (6,'Angela');select nome_autor from autor;
create index xautor
on autor(nome_autor);select nome_autor from autor;
drop index xautor on autor;
select nome_autor from autor;

create index xautor
on autor(nome_autor desc)
select nome_autor from autor
drop table autor

--- Exercicio 2
create table produtos 
(
cod_pro		int					not null,
produto		varchar(60)			not null,
preco		float				not null,
qtdade		int					not null,
datav		date				not null
primary key(cod_pro)
);

------Exerecicio 3
insert into produtos values(1,'Danone','5.70','2','17/05/2021');
insert into produtos values(2,'Yourgute','2.00','5','14/08/2022');
insert into produtos values(3,'Fandangos','3.25','1','10/03/2023');
insert into produtos values(4,'Nugets','6.25','4','02/01/2021');
insert into produtos values(5,'Macarrão','4.00','3','25/11/2024');
insert into produtos values(6,'Maca','102.20','3','25/11/2024');
insert into produtos values(7,'Maca','102.20','102','25/11/2024');

select * from produtos
---Exercicio 4
create table produtos2
(
cod_pro		int			not null,
produto		varchar(60) not null,
preco		float		not null,
qtdade		int			not null,
datav	    date        not null 
primary key(cod_pro)
);

---Exercicio 5
insert into produtos2
select*from produtos;
select * from produtos2

--Exercicio 6
create table produtos3
(
cod_pro		int			not null,
produto		varchar(60) not null,
preco		float		not null,
qtdade		int			not null,
datav	    date        not null 
primary key(cod_pro)
);
---Exercicio 7
insert into produtos3
select*from produtos;
select * from produtos2
--Exercicio 8
create table produtos4
(
cod_pro		int			not null,
produto		varchar(60) not null,
preco		float		not null,
qtdade		int			not null,
datav	    date        not null 
primary key(cod_pro)
);

--Exercicio 9
insert into produtos4
select * from produtos
where preco < 100;

select*from produtos4

--Exercicio 10
update produtos
set preco = preco / 2
where qtdade > 100
select * from produtos;
--Exercicio 11

update produtos
set preco = 0
where datav > 24/03/2020
select*from produtos;

---Exercicio 12

create table produtos 
(
cod_pro		int					not null,
produto		varchar(60)			not null,
preco		float				not null,
qtdade		int					not null,
datav		date				not null
primary key(cod_pro)
);
drop table produtos
insert into produtos values(1,'Nescau','5.70','2','17/05/2021');
insert into produtos values(2,'Nescau','2.00','5','14/08/2022');
insert into produtos values(3,'Nescau','3.25','1','10/03/2023');
insert into produtos values(4,'Nescau','6.25','4','02/01/2021');
insert into produtos values(5,'Nescau','4.00','3','25/11/2024');
insert into produtos values(6,'Nescau','102.20','3','25/11/2024');
insert into produtos values(7,'Nescau','102.20','102','25/11/2024');
---Exercicio 13
insert into produtos
select*from produtos2;
select * from produtos
---- Exercicio 14
update produtos
set preco = 100
where cod_pro >= 2 and cod_pro < =4
select * from produtos;

---Exercicio 15

update produtos 
set date = 31/12/2020
where preco > 0
select * from produtos