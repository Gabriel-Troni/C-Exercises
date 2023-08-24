/* ----------------------------------------------------------------------------------
6.1 Se o conjunto A = {L M N O P} e o conjunto B = {P Q R S T}, quais conjuntos são 
gerados pelas seguintes operações?
- A UNION B
- A UNION ALL B
- A INTERSECT B
- A EXCEPT B
----------------------------------------------------------------------------------- */
- A UNION B         = {L M N O P Q R S T}
- A UNION ALL B     = {L M N O P P Q R S T}
- A INTERSECT B     = {P}
- A EXCEPT B        = {L M N O}

/* ----------------------------------------------------------------------------------
6.2 Escreva uma consulta composta que encontre o nome e o sobrenome de todos os clientes, 
junto com o nome e o sobrenome de todos os funcinários.
----------------------------------------------------------------------------------- */
SELECT fname AS Nome, lname AS Sobrenome
FROM individual
UNION ALL 
SELECT fname, lname
FROM employee

/* ----------------------------------------------------------------------------------
6.3 Ordene os resultados do exercício 6.2 pela coluna lname.
----------------------------------------------------------------------------------- */
SELECT fname AS Nome, lname AS Sobrenome
FROM individual
UNION ALL 
SELECT fname, lname
FROM employee
ORDER BY Sobrenome
