 /* ----------------------------------------------------------------------------------

14.1 Crie uma view que consulte a tabela employee e gere a seguinte saída quando 
consultada sem uma cláusula where:

NULL              Michael Smith
Michael Smith     Susan Barker
Michael Smith     Robert Tyler
Robert Tyler      Susan Hawthorne
Susan Hawthorne   John Gooding
Susan Hawthorne   Helen Fleming
Helen Fleming     Chris Tucker
Helen Fleming     Sarah Parker
Helen Fleming     Jane Grossman
Susan Hawthorne   Paula Roberts
Paula Roberts     Thomas Ziegler
Paula Roberts     Samantha Jameson
Susan Hawthorne   John Blake
John Blake        Cindy Mason
John Blake        Frank Portman
Susan Hawthorne   Theresa Markham
Theresa Markham   Beth Fowler
Theresa Markham   Rick Tulman

----------------------------------------------------------------------------------- */

CREATE VIEW employee_and_superior AS

SELECT 		concat(superv.fname, ' ', superv.lname) supervisor_name, 
			concat(emp.fname, ' ', emp.lname) employee_name

FROM 		employee superv RIGHT JOIN employee emp
			ON superv.emp_id = emp.superior_emp_id

SELECT * FROM employee_and_superior

 /* ----------------------------------------------------------------------------------

14.2 O presidente do banco gostaria de ter um relatório mostrando o nome e a cidade de
cada filial, junto com o saldo total de todas as contas abertas na filial. Crie uma view
para gerar os dados.

----------------------------------------------------------------------------------- */

CREATE VIEW branch_balance_report AS

SELECT 		b.name, b.city, sum(a.avail_balance) tot_balance
FROM 		branch b
			INNER JOIN account a
				ON b.branch_id = a.open_branch_id
GROUP BY 	b.name, b.city

SELECT * FROM branch_balance_report

-------------------------------------------------------------------------------------