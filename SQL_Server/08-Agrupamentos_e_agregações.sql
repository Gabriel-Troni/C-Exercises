/* ----------------------------------------------------------------------------------
8.1 Construa uma consulta que conte o número de linhas da tabela account
----------------------------------------------------------------------------------- */
SELECT
    count(*)
FROM
    account;

/* ----------------------------------------------------------------------------------
8.2 Modifique sua consulta do exercício 8.1 para contar o número de contas abertas por 
cada cliente. Mostre o ID de cliente e o número de contas de cada cliente.
----------------------------------------------------------------------------------- */
SELECT
    cust_id,
    count(account_id)
FROM
    account
GROUP BY
    cust_id;

/* ----------------------------------------------------------------------------------
8.3 Modifique sua consulta do exercício 8.2 para incluir apenas os clientes que tenham 
pelo menos duas contas.
----------------------------------------------------------------------------------- */
SELECT
    cust_id,
    count(account_id)
FROM
    account
GROUP BY
    cust_id
HAVING
    count(account_id) >= 2;

/* ----------------------------------------------------------------------------------
8.4 (Crédito extra) Encontre o balanço total disponível por produto e filial em que 
haja mais de uma conta por produto e filial. Ordene os resultados pelo balanço total 
(do maior para o menor).
----------------------------------------------------------------------------------- */
SELECT
    product_cd,
    open_branch_id,
    sum(avail_balance) AS tot_balance,
    count(account_id) AS tot_account
FROM
    account
GROUP BY
    product_cd,
    open_branch_id
HAVING
    count(account_id) >= 2
ORDER BY
    sum(avail_balance) DESC;