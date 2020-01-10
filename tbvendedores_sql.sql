use sucos;

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

SELECT * FROM tabela_de_vendedores WHERE NOME = 'Cláudia Morais';
SELECT * FROM tabela_de_vendedores WHERE Comissao > 0.10;
SELECT * FROM tabela_de_vendedores WHERE YEAR(DATA_ADMISSAO) >= 2016;
SELECT * FROM TABELA_DE_VENDEDORES WHERE YEAR(DATA_ADMISSAO) < 2016 AND DE_FERIAS = 1;

DELETE FROM tabela_de_vendedores WHERE matricula = '236';
