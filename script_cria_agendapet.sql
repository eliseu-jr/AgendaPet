create database agendapet;

use agendapet;

create table cliente(
cod_cliente int not null auto_increment primary key,
nome_cliente varchar(30) not null,
tel_cliente bigint not null,
cpf_cliente bigint not null,
end_cliente varchar(60) not null,
email_cliente varchar(35) not null,
senha_empresa varchar(15) not null
);

insert into cliente values (0,"Eliseu Jr", 12981341240, 11112312301, "Av. Dois 155", "eliseu_jr@hotmail.com", "senha123");
insert into cliente values (0,"Gabriel M", 12997328252, 22212312301, "Rua Um 100", "miacci30@hotmail.com", "senha123");

create table pet(
cod_pet int not null auto_increment,
nome_pet varchar(15) not null,
sexo_pet char(1) not null,
raca_pet varchar(20) not null,
idade_pet date not null,
cod_cliente int not null,
primary key (cod_pet),
foreign key (cod_cliente) references cliente (cod_cliente) on delete cascade
);

insert into pet values (0,"Mini-Thor", "M", "Indefinido", "2015-08-1", 1);

create table empresa
(
cod_empresa int not null auto_increment,
nome_empresa varchar(30) not null,
tel_empresa bigint not null,
endereco_empresa varchar(60),
cnpj_empresa bigint not null,
email_empresa varchar(35) not null,
senha_empresa varchar(15) not null,
latitude_empresa decimal(10,8),
longitude_empresa decimal(11,8),
primary key (cod_empresa)
);

insert into empresa values (0,"Petzfera", 1239136019, "Rua Siqueira Campos 483", 01111222000120, "petzfera@petzfera.com.com", "senha123", 000000000, 000000000);
insert into empresa values (0,"Pet Mercado", 1233464609, "Rua Serafim Dias 138", 01111222000120, "petmercadoa@petmercado.com.com", "senha123", 000000000, 000000000);

create table agendamento
(
cod_agenda int not null auto_increment,
data_agenda datetime not null,
status_agenda varchar(15),
cod_cliente int not null,
cod_empresa int not null,
primary key (cod_agenda),
foreign key (cod_cliente) references cliente (cod_cliente) on delete cascade,
foreign key (cod_empresa) references empresa (cod_empresa) on delete cascade
);

create table servico
(
cod_servico int not null auto_increment,
nome_servico varchar(20) not null,
valor_servico decimal(4,2) not null,
cod_empresa int not null not null,
primary key (cod_servico),
foreign key (cod_empresa) references empresa (cod_empresa) on delete cascade
);

insert into servico values (0, "Tosa", 40.99, 1);
insert into servico values (0, "Tosa", 64.99, 1);
insert into servico values (0, "Banho e Tosa", 99.99, 1);
insert into servico values (0, "Banho e Tosa", 54.99, 2);

create table log
(
cod_log int not null auto_increment,
alteracao_log varchar(15),
data_log date not null,
usuario_log int not null,
tipo_usuario_log varchar(10) not null,
primary key (cod_log)
);


