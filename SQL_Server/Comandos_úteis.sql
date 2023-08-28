-- Verifica qual índice o otimizador de consulta vai usar
SET SHOWPLAN_TEXT ON; 
GO
SET SHOWPLAN_TEXT OFF;

-- Apaga índice
DROP INDEX txn_date_amount
ON [transaction]

-- Apaga chave estrangeira
ALTER TABLE product
DROP FOREIGN KEY fk_product_type_cd;

-- Cria chave estrangeira que insere e apaga em cascata
ALTER TABLE product
ADD CONSTRAINT fk_product_type_cd FOREIGN KEY (product_type_cd)
REFERENCES product_type (product_type_cd)
ON UPDATE CASCADE
ON DELETE CASCADE

-- Cria tabela a partir de VIEW para otimizar consulta
CREATE TABLE AS
SELECT * FROM exemplo_vw