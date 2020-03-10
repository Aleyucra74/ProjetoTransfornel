create database projetotransformers;
use projetotransformers;

create table login(
nome varchar(45) not null,
cpf_cnpj varchar(45) primary key,
email varchar(45) not null,
senha varchar(45) not null
);

create table transformadores(
id_transformador int primary key,
logradouro varchar(45) not null,
bairro varchar(45) not null,
cidade varchar(45) not null
);

create table statustransformadores(
id_transformador int,
foreign key (id_transformador) references transformadores(id_transformador),
datahorario datetime not null,
statustemperatura varchar(45) not null,
statusumidade varchar(45) not null
);


insert into login (nome, cpf_cnpj, email, senha) values
('Dono da Enel', 19819109118, 'enel@enel.com', 'senha1111');

insert into transformadores (id_transformador, logradouro, bairro, cidade) values
(1, 'Rua Haddock Lobo', 'Cérqueira César', 'São Paulo'),
(2, 'Rua da Consolação', 'Cérqueira César', 'São Paulo'),
(3, 'Rua José Roberto', 'Nova Gerti', 'São Caetano do Sul'),
(4, 'Rua Tupinambás', 'Vila Conceição', 'Diadema');

insert into statustransformadores (id_transformador, datahorario, statustemperatura, statusumidade) values
(1, '2020-03-03 13:30:10', '60C', '70%'),
(2, '2020-02-03 13:30:00', '40C', '95%'),
(2, '2020-03-03 13:31:00', '55C', '80%'),
(3, '2020-04-03 13:29:00', '25C', '100%'),
(4, '2020-04-03 13:33:00', '100C', '10%'),
(4, '2020-03-03 13:40:00', '95C', '13%');

select * from statustransformadores;
select * from transformadores;
select * from login;
desc statustransformadores;
desc transformadores;
desc login;
select id_transformador, datahorario, statustemperatura from statustransformadores;
select * from statustransformadores where id_transformador = 2;
select * from transformadores where cidade = 'são paulo';
select * from transformadores where  bairro like '%o';