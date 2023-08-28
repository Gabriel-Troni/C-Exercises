/* ----------------------------------------------------------------------------------
11.1 Reescreva a seguinte consulta, que usa uma expressão case simples, de forma que 
os mesmos resultados sejam alcançados utilizando-se uma expressão case. Tente usar o 
menor número possível de cláusulas when.

SELECT emp_id,
CASE title
WHEN 'President' THEN 'Management'
WHEN 'Vice President' THEN 'Management'
WHEN 'Treasurer' THEN 'Management'
WHEN 'Loan Manager' THEN 'Management'
WHEN 'Operations Manager' THEN 'Operations'
WHEN 'Head Teller' THEN 'Operations'
WHEN 'Teller' THEN 'Operations'
ELSE 'Unknown'
END
FROM employee;
----------------------------------------------------------------------------------- */
SELECT
    emp_id,
    CASE
        WHEN title LIKE '%President'
        OR title = 'Treasurer'
        OR title = 'Loan Manager' THEN 'Management'
        WHEN title = 'Operations Manager'
        OR title LIKE '%Teller' THEN 'Operations'
        ELSE 'Unknown'
    END
FROM
    employee;

/* ----------------------------------------------------------------------------------
11.2 Reescreva a consulta a seguir de forma que o conjunto-resultado contenha uma única linha com quatro colunas (uma para cada filial).
Nomeie as quatro colunas de branch_1 a branch_4.
SELECT open_branch_id, COUNT(*)
FROM account
GROUP BY open_branch_id;

open_branch_id 	COUNT(*)
1	      8
2	      7
3	      3
4        6
----------------------------------------------------------------------------------- */
SELECT
    sum(
        CASE open_branch_id
            WHEN 1 THEN 1
            ELSE 0
        END
    ) branch_1,
    sum(
        CASE open_branch_id
            WHEN 2 THEN 1
            ELSE 0
        END
    ) branch_2,
    sum(
        CASE open_branch_id
            WHEN 3 THEN 1
            ELSE 0
        END
    ) branch_3,
    sum(
        CASE open_branch_id
            WHEN 4 THEN 1
            ELSE 0
        END
    ) branch_4
FROM
    account