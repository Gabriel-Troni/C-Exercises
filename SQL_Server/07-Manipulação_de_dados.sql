/* ----------------------------------------------------------------------------------
7.1 Escreva uma consulta que retorne do 17° ao 25° caractere da string 'please find the 
substring in this string'.
----------------------------------------------------------------------------------- */
SELECT substring('please find the substring in this string', 17, 9);

/* ----------------------------------------------------------------------------------
7.2 Escreva uma consulta que retorne o valor absoluto e o sinal (-1, 0 ou 1) do número 
-25,76823. Também retorne o número arredondado à centena mais próxima.
----------------------------------------------------------------------------------- */
SELECT abs(-25.76823), sign(-25.76823), round(-25.76823, -2);

/* ----------------------------------------------------------------------------------
7.3 Escreva uma consulta que retorne apenas o mês da data atual.
----------------------------------------------------------------------------------- */
SELECT datepart(month, getdate());