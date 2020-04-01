--1
create database EMPRESA;
--2
use EMPRESA;

--3
create table DEPARTAMENTO
(
dep_codigo		int				not null,		
dep_nome		varchar(25)		not null
primary key(dep_codigo)
);
-- 4
insert into DEPARTAMENTO values(1,'Financeiro');
insert into DEPARTAMENTO values(2,'Administrativo');
insert into DEPARTAMENTO values(3,'Compras');
insert into DEPARTAMENTO values(4,'Vendas');
insert into DEPARTAMENTO values(5,'RH');

select * from DEPARTAMENTO
--5
create table  FUNCIONARIOS 
(
dep_codigo		int				not null,
fun_codigo		int				not null,
fun_nome		varchar(40)		not null,
fun_sobrenome	varchar(20)		unique,
fun_salario		decimal(9,2)	not null
primary key(fun_codigo)
foreign key(dep_codigo) references DEPARTAMENTO (dep_codigo)
);
drop table FUNCIONARIO
--6
insert into FUNCIONARIOS values(1,1,'Lucas','A','2000.00');
insert into FUNCIONARIOS values(1,2,'Bruno','B','2000.00');
insert into FUNCIONARIOS values(2,3,'Fernando','C','500.00');
insert into FUNCIONARIOS values(2,4,'Miguel','D','2584.00');
insert into FUNCIONARIOS values(3,5,'Matheus','E','1500.00');
insert into FUNCIONARIOS values(3,6,'Guilherme','F','456.00');
insert into FUNCIONARIOS values(4,7,'Amanda','G','4528.25');
insert into FUNCIONARIOS values(4,8,'Laura','H','1254.00');
insert into FUNCIONARIOS values(5,9,'Livia','I','2541.00');
insert into FUNCIONARIOS values(6,10,'Pedro','J','1452.25');
SELECT * FROM FUNCIONARIOS;
--7 
alter table FUNCIONARIOS
alter column fun_sobrenome varchar(30);

--8
insert into FUNCIONARIOS values(1,1,'Lucas','Andrez','2000.00');
SELECT * FROM FUNCIONARIOS;
--9
update FUNCIONARIOS set fun_salario = 1000
where dep_codigo = 4;

select*from FUNCIONARIOS;

--10
update FUNCIONARIOS set fun_salario = 1000
where dep_codigo = 2;

update FUNCIONARIOS set fun_sobrenome='Antunes'
where dep_codigo = 2;

-- 11

update FUNCIONARIOS set fun_sobrenome = 'Antunes';

--12
alter table FUNCIONARIOS drop column fun_sobrenome;
select * from FUNCIONARIOS;

--13
create table FUNCIONARIO2
(
dep_codigo		int		not null,
fun_codigo		int		not null,
fun_nome		varchar(40)	not null,
fun_salario		decimal(9,2)	not null
primary key(fun_codigo)
foreign key(dep_codigo) references  DEPARTAMENTO(dep_codigo)
);

--14
insert into FUNCIONARIO2(dep_codigo,fun_codigo,fun_nome,fun_salario)
select * FROM FUNCIONARIO2;

--15
alter table FUNCIONARIOS
add fun_comissao numeric(7,2)	check ( fun_comissao > 0);

--16

create table vendas
(
cod_produto		int				unique,
nome_produto	varchar(60)		not null,
preco_produto	decimal(9,2)	not null,
marca_produto	varchar(40)		not null,
distribuidora	varchar(40)		null
);
insert into vendas values (1,'Camisa','25.23','Polo','Renner');

insert into vendas values (1,'Calca','120.53','Jeans','Renner');

insert into vendas values (2,'Calca','120.53','Jeans','Renner');
insert into vendas values (3,'Vestido','500','Vestido','Renner');
select * from vendas;

--17

drop table vendas
create table vendas
(
cod_produto		int				unique,
nome_produto	varchar(60)		not null,
preco_produto	decimal(9,2)	check (preco_produto > 1000),
marca_produto	varchar(40)		not null,
distribuidora	varchar(40)		null
);
insert into vendas values (1,'Camisa','25.23','Polo','Renner');

insert into vendas values (2,'Calca','1200.53','Jeans','Renner');
insert into vendas values (3,'Vestido','5000','Vestido','Renner');
select * from vendas;

-- 18
drop table vendas
create table vendas
(
cod_produto		int				unique,
nome_produto	varchar(60)		not null,
preco_produto	decimal(9,2)	check (preco_produto > 1000),
marca_produto	varchar(40)		not null,
distribuidora	varchar(40)		null,
quantidade		int				default 1
);
insert into vendas values (1,'Camisa','2500.23','Polo','Renner',DEFAULT);
insert into vendas values (2,'Calca','1200.53','Jeans','Renner',DEFAULT);
insert into vendas values (3,'Vestido','5000','Vestido','Renner',DEFAULT);
select * from vendas;

--19
drop table vendas

create table vendas
(
cod_produto		int				not null,
cod_distribuidora	int			not null,
nome_produto	varchar(60)		not null,
preco_produto	decimal(9,2)	check (preco_produto > 1000),
marca_produto	varchar(40)		not null,
distribuidora	varchar(40)		null,
quantidade		int				not null
primary key (cod_produto,cod_distribuidora)
);

insert into vendas values (1,25,'Camisa','2500.23','Polo','Renner',2);

insert into vendas values (1,25,'Saia','2000.23','Vestido','Renner',3);

insert into vendas values (2,36,'Calca','1200.53','Jeans','Riachuelo',4);
insert into vendas values (3,54,'Vestido','5000','Vestido','Marisa',5);
select * from vendas;

--20

create table pessoa1
(
cod_pessoa		int					not null,
cpf				varchar(40)			unique,
idade			int					check (idade > 18),
qtnd_pessoa		int					default 1
primary key(cod_pessoa)
);
insert into pessoa1 values (1,'45685784-694',19,default);
insert into pessoa1 values (2,'58484854-65',32,default);
insert into pessoa1 values (3,'7485747851-698',58,default);
select * from pessoa1;

create table cadastro(
cod_pessoa			int			not null,
cod_cadastro		int			not null,
rg					varchar(40)	not null,
telefone			varchar(20)	not null
primary key(cod_cadastro)
foreign key(cod_pessoa) references  pessoa1(cod_pessoa)
);
insert into cadastro values (1,1,'50215251','30215478');
insert into cadastro values (2,2,'25141515','99854785');
insert into cadastro values (3,3,'7025687458','99658741');
select*from cadastro;

--21

create table teste
(
nome		varchar(40)			null,
idade		int					null,
salario		decimal(9,2)		null,
cidade		varchar(40)			null
);
--22
insert into teste(nome) values ('Bruno');
select*from teste

--23
insert into teste(nome,idade) values ('Bruno',19);
select*from teste
--24
insert into teste(nome,idade,salario) values ('Bruno',19,'1000.00');
select*from teste

--25
insert into teste values ('Bruno',19,'1000.00','SAO PAULO');
select*from teste

--26
create table teste2
(
nome		varchar(40)			null,
idade		int					null,
salario		decimal(9,2)		null,
cidade		varchar(40)			null
);
--27
insert into teste2
select*from teste;

select*from teste2;

--28
drop table teste
create table teste
(
nome		varchar(40)			null,
idade		int					null,
salario		decimal(9,2)		null,
cidade		varchar(40)			null,
sexo		varchar(12)			null
);
--29
update teste set sexo = 'M'
where idade = NULL;
insert into teste values ('Bruno',19,'1000.00','SAO PAULO','Masculino');
select*from teste
insert into teste(nome,salario,cidade,sexo) values ('Bruno','1000.00','SAO PAULO','Masculino');
--30
update teste set sexo = 'F'
where idade <> NULL;
select*from teste
insert into teste(nome,salario,cidade,sexo) values ('Bruno','1000.00','SAO PAULO','Masculino');

--31
update teste set cidade = 'Bauru'
where idade  > 18 AND sexo = 'M';
insert into teste values ('Bruno',19,'1000.00','SAO PAULO','M');
select*from teste

--32

alter table teste drop column sexo;
alter table teste drop column idade;

--33
alter table teste2 drop column nome;
alter table teste2 drop column idade;
alter table teste2 drop column salario;
alter table teste2 drop column cidade;
select * from teste2;
--34
drop table teste;
select * from teste;
--35

drop database EMPRESA;

--36 
use EMPRESA;
-- O banco de Dados não existe mais, logo não existe mais tabelas e registros.
