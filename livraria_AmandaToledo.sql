drop database livraria;
create database livraria;
use livraria;
show databases;
show tables;

create table cliente(
id_cliente int(5) auto_increment,
nome_cliente varchar(45) not null,
sexo varchar (15),
idade varchar (5),
celular varchar(40),
email varchar(40),
cep int (8),
numero_residencia varchar(5),
cpf varchar (40),
mes_cadastro date,
senha varchar(40),
primary key(id_cliente)
);

create table vendedor(
id_vendedor int(5) auto_increment,
nome_vendedor varchar(20),
telefone varchar(20),
email varchar(30),
primary key (id_vendedor)
);

create table pedido(
id_pedido int(5) auto_increment,
datapedido varchar(11),
valor varchar(20),
forma_pagamento varchar(20),
id_cliente int(5),
id_vendedor int(5),
primary key(id_pedido),
foreign key(id_cliente) references cliente(id_cliente),
foreign key(id_vendedor) references vendedor(id_vendedor)
);

create table livros(
id_livro int(5) auto_increment,
nome_livro varchar(60),
preco int(5),
editora varchar(20),
primary key (id_livro)
);

create table nota_fiscal(
idnota_fiscal int(5) auto_increment,
numero_notafiscal varchar(30),
primary key (idnota_fiscal)
);

create table livrospedidos(
id_cliente int(5),
id_vendedor int(5),
id_livro int(5),
id_pedido int(5),
idnota_fiscal int(5),
foreign key(id_cliente) references cliente(id_cliente),
foreign key(id_vendedor) references vendedor(id_vendedor),
foreign key(id_livro) references livros(id_livro),
foreign key(id_pedido) references pedido(id_pedido),
foreign key(idnota_fiscal) references nota_fiscal(idnota_fiscal)
);

create table estoque(
id_estoque int(5) auto_increment,
quantidade varchar(45),
id_livro int(5),
primary key (id_estoque),
foreign key(id_livro) references livros(id_livro)
);

insert into cliente (nome_cliente, sexo, idade, celular, email, cep, numero_residencia, cpf, mes_cadastro, senha)
values
('João Silva', 'M', 30, '11987654321', 'joao.silva@email.com', '01234567', '123', '123.456.789-00', '2024-09-08', 'senha123'),
('Maria Oliveira', 'F', 28, '21987654321', 'maria.oliveira@email.com', '23456789', '456', '234.567.890-11', '2024-07-24', 'maria2024'),
('Carlos Souza', 'M', 32, '31987654321', 'carlos.souza@email.com', '34567890', '789', '345.678.901-22', '2024-08-01', 'carlos@2024'),
('Ana Costa', 'F', 29, '41987654321', 'ana.costa@email.com', '45678901', '101', '456.789.012-33', '2024-07-12', 'ana2024'),
('Pedro Santos', 'M', 35, '51987654321', 'pedro.santos@email.com', '56789012', '202', '567.890.123-44', '2024-03-17', 'pedro1234'),
('Lucas Pereira', 'M', 27, '61987654321', 'lucas.pereira@email.com', '67890123', '303', '678.901.234-55', '2024-05-30', 'lucas123'),
('Fernanda Almeida', 'F', 31, '71987654321', 'fernanda.almeida@email.com', '78901234', '404', '789.012.345-66', '2024-01-12', 'fernanda@2024'),
('Roberto Lima', 'M', 33, '81987654321', 'roberto.lima@email.com', '89012345', '505', '890.123.456-77', '2024-04-16', 'roberto2024'),
('Júlia Martins', 'F', 26, '91987654321', 'julia.martins@email.com', '90123456', '606', '901.234.567-88', '2024-02-07', 'julia@2024'),
('André Costa', 'M', 34, '02987654321', 'andre.costa@email.com', '01234567', '707', '012.345.678-99', '2024-06-04', 'andre2024'),
('Patrícia Rocha', 'F', 30, '13987654321', 'patricia.rocha@email.com', '12345678', '808', '123.456.789-00', '2024-01-08', 'patricia2024'),
('Gustavo Almeida', 'M', 29, '23987654321', 'gustavo.almeida@email.com', '23456789', '909', '234.567.890-11', '2024-08-26', 'gustavo2024'),
('Beatriz Fernandes', 'F', 25, '33987654321', 'beatriz.fernandes@email.com', '34567890', '010', '345.678.901-22', '2024-08-20', 'beatriz2024'),
('Rafael Oliveira', 'M', 31, '43987654321', 'rafael.oliveira@email.com', '45678901', '121', '456.789.012-33', '2024-06-19', 'rafael2024'),
('Juliana Silva', 'F', 27, '53987654321', 'juliana.silva@email.com', '56789012', '232', '567.890.123-44', '2024-08-06', 'juliana2024'),
('Marcos Souza', 'M', 29, '63987654321', 'marcos.souza@email.com', '67890123', '343', '678.901.234-55', '2024-05-25', 'marcos2024'),
('Sofia Lima', 'F', 32, '73987654321', 'sofia.lima@email.com', '78901234', '454', '789.012.345-66', '2024-02-13', 'sofia2024'),
('Eduardo Costa', 'M', 36, '83987654321', 'eduardo.costa@email.com', '89012345', '565', '890.123.456-77', '2024-01-01', 'eduardo2024'),
('Isabela Almeida', 'F', 28, '93987654321', 'isabela.almeida@email.com', '90123456', '676', '901.234.567-88', '2024-03-04', 'isabela2024'),
('Thiago Rocha', 'M', 31, '04987654321', 'thiago.rocha@email.com', '01234567', '787', '012.345.678-99', '2024-03-04', 'thiago2024'),
('Larissa Fernandes', 'F', 29, '14987654321', 'larissa.fernandes@email.com', '12345678', '898', '123.456.789-00', '2024-04-10', 'larissa2024'),
('Vinícius Santos', 'M', 30, '24987654321', 'vinicius.santos@email.com', '23456789', '909', '234.567.890-11', '2024-08-13', 'vinicius2024');

insert into livros (nome_livro,preco,editora) values
('O Hobbit', 29.90, 'HarperCollins'),
('1984', 34.90, 'Companhia das Letras'),
('Dom Casmurro', 25.50, 'Livraria Martins'),
('A Menina que Roubava Livros', 39.90, 'Intrínseca'),
('O Senhor dos Anéis', 59.90, 'HarperCollins'),
('O Código Da Vinci', 49.90, 'Arqueiro'),
('Harry Potter e a Pedra Filosofal', 44.90, 'Rocco'),
('O Alquimista', 27.90, 'HarperCollins'),
('Orgulho e Preconceito', 22.90, 'L&PM Editores'),
('A Guerra dos Tronos', 54.90, 'Leya'),
('O Pequeno Príncipe', 18.90, 'Agir'),
('A Cabana', 28.90, 'Thomas Nelson'),
('Sapiens: Uma Breve História da Humanidade', 62.90, 'L&PM Editores'),
('O Sol é para Todos', 33.90, 'José Olympio'),
('A Arte da Guerra', 21.90, 'Gente');

insert into vendedor (nome_vendedor, telefone, email) values
('Ana Silva', '11987654321', 'ana.silva@email.com'),
('Carlos Pereira', '21976543210', 'carlos.pereira@email.com'),
('Beatriz Lima', '31965432109', 'beatriz.lima@email.com'),
('João Santos', '41954321098', 'joao.santos@email.com'),
('Mariana Oliveira', '51943210987', 'mariana.oliveira@email.com');

insert into pedido (datapedido, valor, forma_pagamento, id_cliente, id_vendedor) values
('2024-09-01', 150.75, 'Cartão de Crédito', 2, 5),
('2024-09-02', 89.90, 'Boleto Bancário', 1, 2),
('2024-09-03', 45.00, 'Dinheiro', 15, 5),
('2024-09-04', 120.00, 'Cartão de Débito', 20, 3),
('2024-09-05', 200.25, 'Pix', 7, 1);

insert into nota_fiscal (numero_notafiscal) values
(123456789),
(234567890),
(345678901),
(456789012),
(567890123);

insert into livrospedidos (id_cliente, id_vendedor, id_livro, id_pedido, idnota_fiscal) values 
(2,5,3,1,1),
(1,2,7,2,2),
(15,5,5,3,3),
(20,3,8,4,4),
(7,1,9,5,5);


select * from pedido;
select email, senha from cliente where id_cliente=10;
select * from livros;

select * from cliente
WHERE mes_cadastro = (
    SELECT MAX(mes_cadastro)
    FROM cliente );
    
select * from cliente
WHERE DATE_FORMAT(mes_cadastro, '%Y-%m') = (
    SELECT DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 1 MONTH), '%Y-%m')
);

select * from livrospedidos;

SELECT 
	c.nome_cliente,
    v.nome_vendedor,
    l.nome_livro,
    p.valor,
    p.forma_pagamento,
    nf.numero_notafiscal
FROM livrospedidos lp
JOIN cliente c ON lp.id_cliente = c.id_cliente
JOIN vendedor v ON lp.id_vendedor = v.id_vendedor
JOIN livros l ON lp.id_livro = l.id_livro
JOIN pedido p ON lp.id_pedido = p.id_pedido
JOIN nota_fiscal nf ON lp.idnota_fiscal = nf.idnota_fiscal;

-- Selects aula  10.09
select count(*) from pedido
where forma_pagamento = 'Dinheiro';

select count(*) from cliente
where mes_cadastro between '2024-08-01' and '2024-08-31';

-- Selects aula 17.09
select * from cliente 
where nome_cliente like 'g%' and nome_cliente like '%a';

select * from cliente
where nome_cliente like '%silva%';

select * from cliente 
where nome_cliente like  '%a' or  nome_cliente like 'p%';

select sexo, count(id_cliente) from cliente
group by sexo; 

select idade, count(id_cliente) from cliente
where idade between 20 and 30
group by idade
order by idade asc;
