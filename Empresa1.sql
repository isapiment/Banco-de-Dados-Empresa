create database CadastroCliente_bd;
use CadastroCliente_bd;

create table Endereco(
id_end int primary key auto_increment,
nome_rua_end varchar(300),
bairro_end varchar(300),
cidade_end varchar(300),
numero_end  int, 
estado_end varchar(300)
);

insert into Endereco values  (1, 'Nicolas Alameda', 'Itaberá', 'Rio de Janeiro','158','Rio Janeiro');
insert into Endereco values  (2, 'Pereira Rodovia', 'Antena', 'Paranaguá', '9638', 'Alagoas');
insert into Endereco values  (3, 'Kléber Rodovia', 'Rio Branco', 'Piaui','7418','Rio Janeiro');
insert into Endereco values  (4, 'Rio Branco', 'Rio Branco', 'Paranaguá', '78965', 'Alagoas');
insert into Endereco values  (5, 'Talles de Ouvires', 'Itaberá', 'Rio de Janeiro','8521','Rio Janeiro');
insert into Endereco values  (6, 'Avenida Brasileira', 'Antena', 'Paranaguá', '8596', 'Alagoas');
insert into Endereco values  (7, 'Kléber Outrora', 'Rio Branco', 'Piaui','6789','Rio Janeiro');
insert into Endereco values  (8, 'Rio Branco Vicente', 'Rio Branco', 'Paranaguá', '024', 'Alagoas');
insert into Endereco values  (9, 'Nicolas Alameda', 'Itaberá', 'Rio de Janeiro','0075','Rio Janeiro');
insert into Endereco values  (10, 'Pereira Rodovia', 'Antena', 'Paranaguá', '024', 'Alagoas');

select * from Endereco;

create table Empresa(
id_emp int primary key auto_increment,
cnpj_emp varchar(100), 
razão_social_emp varchar(300),
nome_fantasia_emp varchar(300),
situação_cadastral_emp varchar(300),
regime_tributário_emp varchar(300),  
data_início_ativ_emp date, 
telefone_emp varchar(100),
capital_social_emp double, 
tipo_emp  varchar(100),
porte_empresa_emp varchar(200), 
natureza_jurídica_emp varchar(300),
nome_proprietário_emp varchar(300),
cpf_proprietário_emp varchar(50),

id_end_fk int,
foreign key (id_end_fk) references Endereco (id_end)
);

desc Empresa;
insert into Empresa values  (null, '75.379.093/0001-06', 'Sistemas para a Web', 'Tec. SmartWeb','Suspensa','Lucro Presumido', '2022-10-17', '(48) 3991-1980',  257585, 'Filial', 'Pequeno', 'MEI – Microempreendedor Individual', 'Edivaldo Márcio Batista Filho', '783.357.789-81', 1);
insert into Empresa values  (null, '70.530.023/0001-93', 'Criação de Software', 'Tec. Connection', 'Nula', 'Simples Nacional', '2021-08-27', '(49) 2681-5521', 916431, 'Matriz', 'Médio','Sociedade Simples Limitada', 'Emílio Domingues Jr.', '188.602.669-63', 2);
insert into Empresa values  (null, '40.490.556/0001-28', 'Comercio & Cia', 'Palace Tec.','Ativa','Real', '2022-05-03', '(48) 3250-2561',  773367, 'Filial', 'Grande', 'Sociedade Limitada Unipessoal', 'Gian Inácio de Benites Jr.', '183.678.789-81', 3);
insert into Empresa values  (null, '95.989.839/0001-00', 'Comércio da tecnologia', 'Tec. Electronics', 'Inapta', 'Simples Nacional', '2023-06-21', '(48) 3996-4347',  500430, 'Matriz', 'Grande', 'EI – Empresário Individual', 'Paulínia Medina Ramires', '240.963.789-25', 4);
insert into Empresa values  (null, '95.458.789/0001-00', 'Tecnologia', 'Tec. Informações', 'Baixada', 'Real', '2023-02-01', '(48) 3996-5874',  150000, 'Filial', 'Médio', 'EI – Empresário Individual', 'Patrícia Neves Ribeiro', '247.763.852-25', 5);

select * from Empresa;

create table Funcionario (
id_func int primary key auto_increment,
nome_func varchar(300), 
data_nasc_func date, 
cpf_func varchar(50),
rg_func varchar(50),
email_func varchar(100),
telefone_func varchar(100),
estado_civil_func varchar(200),
salario_func double,

id_end_fk int, 
id_emp_fk int,
foreign key (id_end_fk) references Endereco (id_end),
foreign key (id_emp_fk) references Empresa (id_emp)
);

alter table  Funcionario add funcao_func varchar (300) after salario_func;

desc Funcionario; 
insert into Funcionario values  (null, 'Lucas Ryan Tavares Neto', '2004-02-06', '450.463.760-08','24.354.770-5','lucasryan234@gmail.com', '(47) 3730-1619', 'Casado', 2500, 'Vendedor',6 , 1);
insert into Funcionario values  (null, 'Vitor Theodoro da Silva Brito', '1996-12-21', '757.304.570-06', '46.379.118-6', 'vitorsilva24@gmail.com', '(47) 3765-8814', 'Casado', 3000, 'Tec. Informática', 7, 2);
insert into Funcionario values  (null, 'Helena Amorin Kilper', '1987-12-01', '052.600.550-55','16.028.302-4','Helenaamorin23@gmail.com', '(47) 3822-9692', 'Casado',  3650, 'Tec. Informatica',8 , 3);
insert into Funcionario values  (null, 'Aurora Pimentel Kim', '2000-10-28', '421.081.570-50', '32.284.808-8', 'aurorapiment256@gmail.com', '(47) 2837-6578', 'Solteira',  4789, 'Administrador', 9 ,4);
insert into Funcionario values  (null, 'Thay Carmem Yeman Novaes', '2003-09-16', '917.463.720-79','14.359.177-0','thay9034@gmail.com', '(47) 3890-1618', 'Casado', 2500, 'Vendedor',10 , 1);

select * from Funcionario;
