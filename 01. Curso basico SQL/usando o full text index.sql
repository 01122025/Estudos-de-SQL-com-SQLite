-- introdução para o exercicio de hoje usando o full text index --
INSERT INTO clientes (id_clientes, nome, cidade, idade) VALUES
(9, 'João Silva', 'São Paulo', 25),
(10, 'Maria Santos', 'Rio de Janeiro', 32),
(11, 'Pedro Oliveira', 'Belo Horizonte', 41),
(12, 'Ana Souza', 'Curitiba', 28),
(13, 'Carlos Pereira', 'Salvador', 35),
(14, 'Juliana Costa', 'Recife', 22),
(15, 'Lucas Rodrigues', 'Fortaleza', 30),
(16, 'Fernanda Almeida', 'Brasília', 27),
(17, 'Rafael Lima', 'Porto Alegre', 45),
(18, 'Camila Martins', 'Manaus', 33),
(19, 'Bruno Rocha', 'Belém', 24),
(20, 'Larissa Ribeiro', 'Goiânia', 29),
(21, 'Gabriel Alves', 'Campinas', 38),
(22, 'Mariana Monteiro', 'Maceió', 26),
(23, 'Felipe Mendes', 'Natal', 42),
(24, 'Beatriz Carvalho', 'Florianópolis', 31),
(25, 'Gustavo Gomes', 'Vitória', 36),
(26, 'Amanda Fernandes', 'São Luís', 23),
(27, 'Thiago Nascimento', 'João Pessoa', 40),
(28, 'Patrícia Araújo', 'Guarulhos', 34);

INSERT INTO clientes (id_clientes, nome, cidade, idade) VALUES
(29, 'Ana Beatriz Souza',     'São Paulo',       28),
(30, 'Ana Carolina Lima',     'Campinas',        34),
(31, 'Anderson Pereira',      'Santos',          41),
(32, 'Andreia Martins',       'Guarulhos',       37),
(33, 'Marcos Oliveira',       'Rio de Janeiro',  45),
(34, 'Marcelo Santana',       'Niterói',         39),
(35, 'Márcia Rodrigues',      'Belo Horizonte',  52),
(36, 'Marina Castro',         'Curitiba',        26),
(37, 'Carlos Eduardo Alves',  'Porto Alegre',    48),
(38, 'Carla Fernandes',       'Florianópolis',   31),
(39, 'Camila Ribeiro',        'Salvador',        24),
(40, 'Caio Barbosa',          'Recife',          29),
(41, 'Lucas Almeida',         'Fortaleza',       22),
(42, 'Lucia Nogueira',        'Brasília',        57),
(43, 'Luciana Teixeira',      'Goiânia',         35),
(44, 'Luan Cardoso',          'Manaus',          27),
(45, 'Rafael Mendes',         'Belém',           33),
(46, 'Rafaela Araújo',        'São Luís',        30),
(47, 'Renato Gomes',          'Vitória',         44),
(48, 'Renata Batista',        'Sorocaba',        38);

-- utilizando o like fazemos uma consulta de caracteres 'genericos' assim podemos dizer. Não temos uma busca inteligente ---
Select * from clientes where nome Like '%Ma%';
-- podemos ver que as consultas usando like não conseguimos extrair o que precisamos realmente--
Create fulltext index seach_name on clientes(nome,cidade);
 -- aqui estamos usando um tipo de  busca mais direcionada e perfomatica onde ela busca extamente o que foi pedido--
Select * from clientes where match(nome,cidade) against('Maceio');



