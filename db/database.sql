-- Criação do banco de dados
create database sistemadeturismo;
use sistemadeturismo;

-- Tabelas
create table usuario (
  id_usuario int auto_increment primary key,
  nome varchar(30),
  senha varchar(20)
);

create table cidade (
  id int auto_increment primary key,
  nome varchar(20)
);

create table estado (
  id int auto_increment primary key,
  nome varchar(20)
);

create table clientes (
  id int auto_increment primary key,
  nome varchar(30),
  telefone int unique,
  email varchar(40) unique
);

create table reserva_turismo (
  id int auto_increment primary key,
  id_cliente int,
  id_cidade int,
  id_estado int,
  data_reserva date,
  foreign key (id_cliente) references clientes(id),
  foreign key (id_cidade) references cidade(id),
  foreign key (id_estado) references estado(id)
);

insert into usuario (nome, senha) values ("Alek", "1234");

insert into estado (nome) values
("São Paulo"),
("Rio de Janeiro"),
("Minas Gerais"),
("Bahia"),
("Paraná");

insert into cidade (nome) values
("São Paulo"), ("Campinas"), ("Santos"), -- São Paulo
("Rio de Janeiro"), ("Niterói"), ("Cabo Frio"), -- Rio de Janeiro
("Belo Horizonte"), ("Uberlândia"), ("Divinópolis"), -- Minas Gerais
("Salvador"), ("Feira de Santana"), ("Vitória da Conquista"), -- Bahia
("Curitiba"), ("Londrina"), ("Maringá"); -- Paraná


insert into reserva_turismo (id_cliente, id_cidade, id_estado, data_reserva)
values (1, 1, 1, '2025-01-27'); -- Cliente 1, Cidade São Paulo, Estado São Paulo, Data de reserva 27/01/2025
-- Inserir um cliente na tabela clientes
insert into clientes (nome, telefone, email) values ("alekin", 123456789, "alek@email.com");
-- Inserir uma reserva de turismo
insert into reserva_turismo (id_cliente, id_cidade, id_estado, data_reserva)
values (1, 1, 1, '2025-01-27'); -- Cliente 1, Cidade São Paulo, Estado São Paulo, Data de reserva 27/01/2025



-- Verificando se as inserções estão corretas
select * from estado;
select * from cidade;
select * from reserva_turismo;
