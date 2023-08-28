/* ----------------------------------------------------------------------------------
15.1 Escreva uma consulta que liste todos os índices do esquema bank. Inclua o nome 
das tabelas.
----------------------------------------------------------------------------------- */
SELECT DB_name(), tbl.name, ind.name
FROM sys.tables tbl
	INNER JOIN sys.indexes ind ON tbl.object_id = ind.object_id 

/* ----------------------------------------------------------------------------------
15.2 Escreva uma consulta que gere uma saída que possa ser usada para criar todos os índices da tabela bank.employee. A saída deve ter o seguinte formato:
"CREATE INDEX <nome_índice> ON <nome_tabela> (<lista_de_colunas>)"
----------------------------------------------------------------------------------- */
DECLARE @name_index NVARCHAR(128) = (SELECT name FROM sys.indexes 
									 WHERE object_id = object_id('employee'));
									 
SELECT concat(
'CREATE INDEX ', 
@name_index,
' ON employee (',
(SELECT col.name FROM sys.columns col 
    INNER JOIN sys.index_columns indcol ON indcol.column_id = col.column_id
    INNER JOIN sys.indexes ind ON ind.object_id = col.object_id
    WHERE indcol.object_id = object_id('employee') AND ind.name = @name_index
),
')'
) [CREATE INDEX script]

-- Saída: CREATE INDEX pk_employee ON employee (emp_id)