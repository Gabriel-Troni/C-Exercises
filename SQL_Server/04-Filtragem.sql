/* ----------------------------------------------------------------------------------
4. Os dados de transação a seguir são usados para os dois primeiros exercícios:

Txn_id  Txn_date     Account_id  Txn_type_cd Amount
1       2005-02-22   101         CDT         1000.00
2       2005-02-23   102         CDT         525.75
3       2005-02-24   101         DBT         100.00
4       2005-02-24   103         CDT         55
5       2005-02-25   101         DBT         50
6       2005-02-25   103         DBT         25
7       2005-02-25   102         CDT         125.37
8       2005-02-26   103         DBT         10
9       2005-02-27   101         CDT         75

4.1 Quais dos IDs de transação seriam retornados pelas seguintes condições de filtro?
 txn_date < '2005-02-26' AND (txn_type_cd = 'DBT' OR amount > 100)
----------------------------------------------------------------------------------- */
SELECT *
FROM [transaction]
WHERE txn_date < '26/02/2005'
AND (txn_type_cd = 'DBT' OR amount > 100)

-- IDs: 1, 2, 3, 5, 6, 7

/* ----------------------------------------------------------------------------------
4.2 Quais dos IDs de transação seriam retornados pelas seguintes condições de filtro?
 account_id IN (101,103) AND NOT (txn_type_cd = 'DBT' OR amount > 100)
----------------------------------------------------------------------------------- */
SELECT *
FROM [transaction]
WHERE account_id IN (101,103) AND NOT (txn_type_cd = 'DBT' OR amount > 100)

-- IDs: 4 e 9

/* ----------------------------------------------------------------------------------
4.3 Construa uma consulta que recupera todas as contas abertas em 2002.
----------------------------------------------------------------------------------- */
SELECT * FROM account
WHERE open_date LIKE '2002%'

/* ----------------------------------------------------------------------------------
4.4 Construa uma consulta que encontre todos os clientes não comerciais cujo sobrenome 
contenha um 'a' na segunda posição e um 'e' em qualquer lugar após o 'a'.
----------------------------------------------------------------------------------- */
SELECT * 
FROM individual
WHERE lname LIKE '_a%e%'