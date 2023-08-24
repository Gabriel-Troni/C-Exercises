/* ----------------------------------------------------------------------------------
3.1 Recupere o ID do funcionário, nome e sobrenome de todos os funcionários do banco. 
Ordene por sobrenome e depois pelo nome.
----------------------------------------------------------------------------------- */
SELECT
    emp_id,
    fname,
    lname
FROM
    employee
ORDER BY
    lname,
    fname

/* ----------------------------------------------------------------------------------
3.2 Recupere o ID da conta, ID do cliente e saldo disponível de todas as contas cujo status 
seja 'ACTIVE' e cujo saldo disponível seja maior que U$2.500
----------------------------------------------------------------------------------- */
SELECT
    account_id,
    cust_id,
    avail_balance
FROM
    account
WHERE
    status = 'ACTIVE'
    AND avail_balance > 2500

/* ----------------------------------------------------------------------------------
3.3 Escreva uma consulta na tabela account que retorne os IDs dos empregados que abriram as 
contas (use a coluna account.open_emp_id). Inclua uma única linha para cada funcionário 
específico.
----------------------------------------------------------------------------------- */
SELECT DISTINCT
    open_emp_id
FROM
    account

/* ----------------------------------------------------------------------------------
3.4 Preencha os espaços em branco (indicados por <#>) dessa consulta para obter os 
resultados mostrados abaixo:
    
SELECT p.product_cd, a.cust_id, a.avail_balance
-> FROM product p INNER JOIN account <1>
->   ON p.product_cd = <2>
-> WHERE p.<3> = 'ACCOUNT';
+------------+---------+---------------+
| product_cd | cust_id | avail_balance |
+------------+---------+---------------+
| CD         |       1 |       3000.00 |
| CD         |       6 |      10000.00 |
| CD         |       7 |       5000.00 |
| CD         |       9 |       1500.00 |
| CHK        |       1 |       1057.75 |
| CHK        |       2 |       2258.02 |
| CHK        |       3 |       1057.75 |
| CHK        |       4 |        534.12 |
| CHK        |       5 |       2237.97 |
| CHK        |       6 |        122.37 |
| CHK        |       8 |       3487.19 |
| CHK        |       9 |        125.67 |
| CHK        |      10 |      23575.12 |
| CHK        |      12 |      38552.05 |
| MM         |       3 |       2212.50 |
| MM         |       4 |       5487.09 |
| MM         |       9 |       9345.55 |
| SAV        |       1 |        500.00 |
| SAV        |       2 |        200.00 |
| SAV        |       4 |        767.77 |
| SAV        |       8 |        387.99 |
+------------+---------+---------------+
----------------------------------------------------------------------------------- */
SELECT
    p.product_cd,
    a.cust_id,
    a.avail_balance
FROM
    product p
    INNER JOIN account a ON p.product_cd = a.product_cd
WHERE
    p.product_type_cd = 'ACCOUNT';
-------------------------------------------------------------------------------------