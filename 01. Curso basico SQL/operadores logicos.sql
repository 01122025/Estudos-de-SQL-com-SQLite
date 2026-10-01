-- utilizando os operadores lógicos --
select * from clientes; 
-- podemos utilizar o operador lógico AND para dizer que 'quero essa condição 'E' essa outra condição' ambas das condições devem ser verdadeiras--
-- O operador AND é usado quando todas as condições especificadas precisam ser verdadeiras para que a linha seja incluída no resultado. Ele é útil para estreitar a pesquisa.--
select * from clientes where cidade = 'São Paulo' and idade > 20 order by idade;

-- podemos utilizar o operador lógico OR para dizer que 'quero essa condição ou essa outra condição uma das condições devem ser verdadeiras--
-- O operador OR é usado quando qualquer uma das condições especificadas precisa ser verdadeira. Ele é usado para ampliar a pesquisa.--
select * from clientes where cidade = 'São Paulo' or cidade = 'Rio de janeiro' order by cidade;

-- podemos utilizar o operador lógico IN para dizer que 'Me traga todas esses caracteres de busca e apenas esses que eu citei' --
select * from clientes where cidade IN ('São Paulo', 'Rio de Janeiro', 'Belo Horizonte') order by cidade;

-- podemos utilizar o operador lógico NOT para dizer que 'Me traga todas esses caracteres menos o que eu especifiquei' --
-- O operador NOT inverte o resultado de uma condição. É frequentemente usado com AND e OR para excluir linhas específicas.--
select * from clientes where NOT cidade='São Paulo' order by cidade;


-- exercicio proposto é utilizar o filtros distintos  e mesclando as condições --
select * from clientes order by cidade;
-- aqui utilizamos os AND e OR para consultar duas condições e expecificar a consulta --
select * from clientes where (cidade = 'São Paulo' and idade >= 20) Or (cidade = 'Rio de janeiro' and idade > 40);

select * from clientes where (nome Like 'R%' and idade > 30) OR (nome like 'A%' and idade < 30) order by nome;