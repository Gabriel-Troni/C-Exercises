/* ----------------------------------------------------------------------------------
13.1 Modifique a tabela account para que cada cliente não possa ter mais que um produto 
de cada tipo.
----------------------------------------------------------------------------------- */
CREATE UNIQUE INDEX cust_product_cd_idx
ON account (cust_id, product_cd);

/* ----------------------------------------------------------------------------------
13.2 Gere um índice na tabela transaction que possa ser usado em ambas as consultas a 
seguir:
	
	SELECT txn_date, amount
	FROM [transaction]
	WHERE txn_date > convert(DATETIME, '2008-12-31 23:59:59', 120)
	
	SELECT txn_date, account_id, txn_type_cd, amount
	FROM [transaction]
	WHERE txn_date > convert(DATETIME, '2008-12-31 23:59:59', 120)
	OR amount < 1000;

----------------------------------------------------------------------------------- */VV
CREATE INDEX txn_idx01
ON [transaction] (txn_date, amount)