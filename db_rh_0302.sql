-- comandos de DDL
-- 05/08/2026

create database bd_rh_0302;

-- usar o db
use bd_rh_0302;

-- criar tabela cargo
create table tb_cargo
(cd_cargo int not null primary key,
cargo char(30));

-- criar tabela setor
create table tb_setor
(cd_setor int not null primary key,
setor char(30));

create table tb_funcionario
(matricula int not null primary key,
funcionario char(30),
dt_nascimento date,
cd_setor int,
cd_cargo int,
salario decimal(12, 2));


-- relacionamentos de tb_funcionario e tb_cargo

alter table tb_funcionario 
add constraint fk_cargo foreign key (cd_cargo)
references tb_cargo (cd_cargo);

-- relacionamentos de tb_funcionario e tb_setor
alter table tb_funcionario 
add constraint fk_setor foreign key (cd_setor)
references tb_setor (cd_setor);





