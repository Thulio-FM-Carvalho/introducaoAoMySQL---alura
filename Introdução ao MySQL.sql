use sucos;

-- TABELA CLIENTE --
create table tbCliente

(CPF VARCHAR(11),
NOME VARCHAR(100),
ENDERECO1 VARCHAR(150),
ENDERECO2 VARCHAR(150),
BAIRRO VARCHAR(50),
CIDADE VARCHAR(50),
ESTADO VARCHAR(50),
CEP VARCHAR(8),
IDADE SMALLINT,
SEXO VARCHAR(1),
LIMITE_CREDITO FLOAT, 
VOLUME_COMPRA FLOAT,
PRIMEIRA_COMPRA BIT(1));

ALTER TABLE tbcliente ADD PRIMARY KEY(CPF); 

-- Adicionando uma nova coluna na tabela do tipo DATE --
ALTER TABLE tbcliente ADD COLUMN (
DATA_NASCIMENTO DATE
);

INSERT INTO tbcliente(
CPF,
NOME, 
ENDERECO1,
ENDERECO2,
BAIRRO,
CIDADE,
ESTADO,
CEP,
IDADE,
SEXO,
LIMITE_CREDITO,
VOLUME_COMPRA,
PRIMEIRA_COMPRA,
DATA_NASCIMENTO) VALUES ( 
'06319293128',
'João da Silva',
'Rua Projetyada A, n10',
'',
'Vila Romão',
'Palmas',
'Tocantins',
'2222222',
30,
'm',
10000.00,
2000,
0,
'1989-11-07');

-- TABELA PRODUTO --
INSERT INTO tbproduto (
PRODUTO, 
NOME,
EMBALAGEM,
TAMANHO,
SABOR,
PRECO_LISTA) VALUES ( 
'1040107',
'Light - 350ml - Melancia',
'Lata',
'350ml',
'Melancia',
 4.56);

ALTER TABLE tbproduto ADD PRIMARY KEY(produto);

UPDATE tbproduto SET Produto = '1040108', nome = 'Frescor de Verão', Embalagem = 'Garrafa', Tamanho = '470ml', Sabor = 'Limão', Preco_lista = 3.30 WHERE produto = 'Frescor do Verão';

DELETE FROM tbproduto WHERE produto = '1040107';

SELECT * FROM tbproduto;

-- TABELA DE VENDEDORES --
CREATE TABLE tabela_de_vendedores (

Matricula INT(5),
Nome VARCHAR(80),
Comissao FLOAT
);

INSERT INTO tabela_de_vendedores (
Matricula,
Nome, 
Comissao) VALUES (
00235,
'Márcio Almeida Silva',
'0.8'
); 
INSERT INTO tabela_de_vendedores (
Matricula,
Nome, 
Comissao) VALUES (
00236,
'Cláudia Moraes',
'0.8'
); 
INSERT INTO tabela_de_vendedores (
Matricula,
Nome,
Comissao ) VALUES (
00233,
'José Geraldo da Fonseca Júnior',
0.12
);
INSERT INTO tabela_de_vendedores (
Matricula,
Nome,
Comissao,
DATA_ADMISSAO,
DE_FERIAS) VALUES (
00235,
'Marcio Almeida Silva',
0.8,
'2014-08-15',
0
);

INSERT INTO tabela_de_vendedores (
Matricula,
Nome,
Comissao,
DATA_ADMISSAO,
DE_FERIAS) VALUES (
00236,
'Cláudia Morais',
0.8,
'2013-09-17',
1
);

INSERT INTO tabela_de_vendedores (
Matricula,
Nome,
Comissao,
DATA_ADMISSAO,
DE_FERIAS) VALUES (
00237,
'Roberta Martins',
0.11,
'2017-03-18',
1
);
INSERT INTO tabela_de_vendedores (
Matricula,
Nome,
Comissao,
DATA_ADMISSAO,
DE_FERIAS) VALUES (
00238,
'Péricles Alves',
0.11,
'2016-08-21',
0
);
ALTER TABLE tabela_de_vendedores ADD COLUMN (
DATA_ADMISSAO DATE,
DE_FERIAS BIT
);

ALTER TABLE tabela_de_vendedores ADD PRIMARY KEY(MATRICULA);

UPDATE tabela_de_vendedores SET Comissao = 0.11 WHERE matricula = 236;

DELETE FROM tabela_de_vendedores WHERE matricula = '233';

 