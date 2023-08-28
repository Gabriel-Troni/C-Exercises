/* ----------------------------------------------------------------------------------
10.1 Escreva uma consulta que retorne todos os nomes de produtos junto com as contas baseadas naquele produto (use a coluna product_cd da tabela account para vinculá-la à tabela product). Inclua todos os produtos, mesmo que nenhuma conta tenha sido aberta 
para aquele produto.
----------------------------------------------------------------------------------- */
SELECT p.name, a.account_id
FROM product p
LEFT JOIN account a ON a.product_cd = p.product_cd;

/* ----------------------------------------------------------------------------------
10.2 Reformule a sua consulta do exercício 10.1 para usar o outro tipo de junção 
externa (por exemplo, se você usou uma junção externa à esquerda no exercício 10.1, 
use uma junção externa à direita desta vez), de forma que os resultados sejam 
idênticos aos do exercício 10.1
----------------------------------------------------------------------------------- */
SELECT p.name, a.account_id
FROM account a
RIGHT JOIN product p ON a.product_cd = p.product_cd;

/* ----------------------------------------------------------------------------------
10.3 Junte externamente a tabela account às tabelas individual e business (por meio da coluna account.cust_id) de tal forma que o conjunto-resultado contenha uma linha por conta. As colunas a serem incluídas são account.account_id, account.product_cd, 
individual.fname, individual.lname e business.name
----------------------------------------------------------------------------------- */
SELECT a.account_id, a.product_cd, i.fname, i.lname, b.name
FROM account a
LEFT JOIN individual i ON a.cust_id = i.cust_id
LEFT JOIN business b ON a.cust_id = b.cust_id
ORDER BY a.account_id;

/* ----------------------------------------------------------------------------------
10.4 (Crédito extra) Invente uma consulta que gere o conjunto {1, 2, 3,..., 99, 100}. (Dica: Use uma junção cruzada com pelo menos duas subconsultas na cláusula from).
----------------------------------------------------------------------------------- */
SELECT (concat(dezenas.num, unidades.num)+1)
FROM
(SELECT 0 num UNION ALL
SELECT 1 UNION ALL
SELECT 2 UNION ALL 
SELECT 3 UNION ALL
SELECT 4 UNION ALL
SELECT 5 UNION ALL 
SELECT 6 UNION ALL 
SELECT 7 UNION ALL 
SELECT 8 UNION ALL
SELECT 9) dezenas
CROSS JOIN
(SELECT 0 num UNION ALL
SELECT 1 UNION ALL
SELECT 2 UNION ALL 
SELECT 3 UNION ALL
SELECT 4 UNION ALL
SELECT 5 UNION ALL 
SELECT 6 UNION ALL 
SELECT 7 UNION ALL 
SELECT 8 UNION ALL
SELECT 9) unidades;