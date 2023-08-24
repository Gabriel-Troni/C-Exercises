/* ----------------------------------------------------------------------------------
5.1 Preencha os espaços em branco (indicados por <#>) para a seguinte consulta para obter 
os resultados que seguem:
SELECT e.emp_id, e.fname, e.lname, b.name
FROM employee e INNER JOIN <1> b
ON e.assigned_branch_id = b.<2>;
+--------+----------+-----------+---------------+
| emp_id | fname    | lname     | name          |
+--------+----------+-----------+---------------+
|      1 | Michael  | Smith     | Headquarters  |
|      2 | Susan    | Barker    | Headquarters  |
|      3 | Robert   | Tyler     | Headquarters  |
|      4 | Susan    | Hawthorne | Headquarters  |
|      5 | John     | Gooding   | Headquarters  |
|      6 | Helen    | Fleming   | Headquarters  |
|      7 | Chris    | Tucker    | Headquarters  |
|      8 | Sarah    | Parker    | Headquarters  |
|      9 | Jane     | Grossman  | Headquarters  |
|     10 | Paula    | Roberts   | Woburn Branch |
|     11 | Thomas   | Ziegler   | Woburn Branch |
|     12 | Samantha | Jameson   | Woburn Branch |
|     13 | John     | Blake     | Quincy Branch |
|     14 | Cindy    | Mason     | Quincy Branch |
|     15 | Frank    | Portman   | Quincy Branch |
|     16 | Theresa  | Markham   | So. NH Branch |
|     17 | Beth     | Fowler    | So. NH Branch |
|     18 | Rick     | Tulman    | So. NH Branch |
+--------+----------+-----------+---------------+
----------------------------------------------------------------------------------- */
SELECT
    e.emp_id,
    e.fname,
    e.lname,
    b.name
FROM
    employee e
    INNER JOIN branch b ON e.assigned_branch_id = b.branch_id;

/* ----------------------------------------------------------------------------------
5.2 Escreva uma consulta que retorne o ID da conta para cada cliente não-corporativo 
(customer.cust_type_cd = 'I'), juntamente com o ID federal do cliente (customer.fed_id) 
e o nome do produto no qual a conta é baseada (product.name).
----------------------------------------------------------------------------------- */
SELECT
    a.account_id,
    c.fed_id,
    p.name
FROM
    account a
    INNER JOIN customer c ON a.cust_id = c.cust_id
    INNER JOIN product p ON p.product_cd = a.product_cd
WHERE
    c.cust_type_cd = 'I';

/* ----------------------------------------------------------------------------------
5.3 Construa uma consulta que encontre todos os funcionários cujo supervisor está 
designado para um departamento diferente. Recupere o ID, o nome e o sobrenome dos 
funcionários.
----------------------------------------------------------------------------------- */
SELECT
    e.emp_id,
    e.fname,
    e.lname
FROM
    employee e
    INNER JOIN employee s ON s.emp_id = e.superior_emp_id
WHERE
    e.dept_id != s.dept_id;