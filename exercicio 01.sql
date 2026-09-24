-- Parte A do exercicio que foi proposto onde deveriamos criar tabelas e executar comandos abordados na aula ---
CREATE Table clientes (
    id_clientes INT PRIMARY KEY,
    nome VARCHAR(100),
    cidade VARCHAR(100),
    idade INT
);

CREATE TABLE pedidos(
    id_pedidos INT PRIMARY KEY,
    client_id INT,
    produto VARCHAR(150),
    valor FLOAT,
    status VARCHAR(100),
    Foreign Key (client_id) REFERENCES clientes(id_clientes)
);

INSERT INTO clientes (id_clientes, nome, cidade, idade)
VALUES
(1,'Ana Silva','São Paulo',28),
(2,'Carlos Souza','Rio de Janeiro',35),
(3,'Mariana Costa','São Paulo', 22),
(4,'João Oliveira','Belo Horizonte', 41),
(5,'Fernanda Lima','São Paulo', 31),
(6,'Ricardo Alves','Curitiba', 26),
(7, 'Beatriz Santos', 'Rio de Janeiro', 37),
(8, 'Lucas Martins', 'Belo Horizonte',19);

INSERT INTO pedidos(id_pedidos,client_id ,produto, valor, status)
VALUES
(1,1,'Notebook',4500,'entregue'),
(2,2,'Mouse',120,'entregue'),
(3,1,'Teclado',250,'pendente'),
(4,3,'Notebook',4500,'entregue'),
(5,4,'Monitor',1200,'cancelado'),
(6,5,'Mouse',120,'entregue'),
(7,6,'Notebook',4500,'pendente'),
(8,7,'Monitor',1200,'entregue'),
(9,1,'Monitor',1200,'entregue'),
(10,8,'Teclado',250,'pendente');

--todos os clientes--
SELECT * FROM cliente

-- apenas nome e cidade dos clientes--
SELECT nome, cidade AS cidade_origem from clientes ;

-- Clientes que moram apenas em são paulo --
SELECT * FROM clientes WHERE cidade = 'São Paulo';

-- Clientes com a idade maior que 30--
SELECT * FROM clientes WHERE idade >30;

-- Clientes entre 25 a 30 anos-- 
SELECT * FROM clientes WHERE idade BETWEEN 25 AND 30 ORDER BY id_clientes;