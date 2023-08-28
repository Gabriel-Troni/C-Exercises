/* ----------------------------------------------------------------------------------
9.1 Construa uma consulta à tabela account que use uma condição de filtro com uma 
subconsulta não-correlata à tabela product para encontrar todas as contas de empréstimo 
(product.product_type_cd = 'LOAN'). Recupere o id de conta, o código do produto, o id 
de cliente e o saldo disponível.
----------------------------------------------------------------------------------- */
SELECT
    account_id,
    product_cd,
    cust_id,
    avail_balance
FROM
    account
WHERE
    product_cd IN (
        SELECT
            product_cd
        FROM
            product
        WHERE
            product_type_cd = 'LOAN'
    )

/* ----------------------------------------------------------------------------------
9.2 Refaça a consulta do exercício 9.1 usando uma subconsulta correlata à tabela 
product para obter os mesmos resultados.
----------------------------------------------------------------------------------- */
SELECT
    account_id,
    product_cd,
    cust_id,
    avail_balance
FROM
    account a
WHERE
    a.product_cd = (
        SELECT
            p.product_cd
        FROM
            product p
        WHERE
            a.product_cd = p.product_cd
            AND p.product_type_cd = 'LOAN'
    )

/* ----------------------------------------------------------------------------------
9.3 Junte a consulta a seguir à tabela employee para mostrar o nível de experiência de 
cada funcionário:
SELECT 'trainee' name, '2004-01-01' start_dt, '2005-12-31' end_dt
UNION ALL
SELECT 'worker' name, '2002-01-01' start_dt, '2003-12-31' end_dt
UNION ALL
SELECT 'mentor' name, '2000-01-01' start_dt, '2001-12-31' end_dt
    
Atribua à subconsulta o alias levels e inclua o id de funcionário, nome, sobrenome e 
nível de experiência (levels.name). (Dica: construa uma condição de junção usando uma 
condição de desigualdade para determinar em qual nível a coluna employee.start_date se 
enquadra).
----------------------------------------------------------------------------------- */
SELECT
    emp_id,
    fname,
    lname,
    levels.name
FROM
    employee
    INNER JOIN (
        (
            SELECT
                'trainee' name,
                '2004-01-01' start_dt,
                '2005-12-31' end_dt
        )
        UNION ALL
        (
            SELECT
                'worker' name,
                '2002-01-01' start_dt,
                '2003-12-31' end_dt
        )
        UNION ALL
        (
            SELECT
                'mentor' name,
                '2000-01-01' start_dt,
                '2001-12-31' end_dt
        )
    ) levels ON start_date BETWEEN start_dt AND end_dt
    
/* ----------------------------------------------------------------------------------
9.4 Construa uma consulta à tabela employee que recupere o ID de funcionário, o nome 
e o sobrenome, junto com os nomes do departamento e da filial aos quais o funcionário 
foi alocado. Não junte nenhuma tabela.
----------------------------------------------------------------------------------- */
SELECT
    emp_id,
    fname,
    lname,
    (
        SELECT
            name
        FROM
            department d
        WHERE
            e.dept_id = d.dept_id
    ),
    (
        SELECT
            name
        FROM
            branch b
        WHERE
            e.assigned_branch_id = b.branch_id
    )
FROM
    employee e