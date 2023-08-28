/* ----------------------------------------------------------------------------------
12.1 Gere uma transação que transfira $50 da conta de aplicação (money market) de 
Frank Tucker para a conta corrente do cliente. Você precisará inserir duas linhas na tabela transaction e atualizar duas linhas na tabela account.
----------------------------------------------------------------------------------- */
BEGIN TRANSACTION

DECLARE @id_MM_account INT = (
	SELECT account_id 
 	FROM account a 
 		INNER JOIN individual i ON a.cust_id = i.cust_id
 	WHERE 	i.fname = 'Frank' 
 		AND i.lname = 'Tucker' 
 		AND a.product_cd = 'MM'
 )
 
 DECLARE @id_CHK_account INT = (
	SELECT account_id 
 	FROM account a 
 		INNER JOIN individual i ON a.cust_id = i.cust_id
 	WHERE 	i.fname = 'Frank' 
 		AND i.lname = 'Tucker' 
 		AND a.product_cd = 'CHK'
 )
 
-- Registra débito na conta tipo MM
 INSERT INTO [transaction] VALUES(
 getdate(), 	
 @id_MM_account,
 'CDT', 
 50, 
 NULL, 
 NULL, 
 getdate()
 )
 
 -- Registra depósito na conta tipo CHK (corrente)
 INSERT INTO [transaction] VALUES(
 getdate(), 	
 @id_CHK_account,
 'DBT', 
 50, 
 NULL, 
 NULL, 
 getdate()
 )
 
 -- Atualiza saldo da conta MM
 UPDATE account SET
 avail_balance = avail_balance - 50,
 last_activity_date = getdate()
 WHERE account_id = @id_MM_account
 
 -- Atualiza saldo da conta CHK
 UPDATE account SET 
 avail_balance = avail_balance + 50,
 last_activity_date = getdate()
 WHERE account_id = @id_CHK_account

COMMIT
