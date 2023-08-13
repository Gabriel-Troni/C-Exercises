// Exercício 1
/* Faça um programa que apresente os números de 1 a 10, sendo que cada número deve ser
impresso em uma linha e os números ímpares deslocados (\t) a direita. */

#include <stdio.h>

int main(void){
    int i, j;
    for (i = 1, j = 2; i <= 9; i = i+2, j = j+2) {
        printf("\t%d\n%d\n", i, j);
    }
    
}

//----------------------------------------------------------------------------------//
//Exercício 2
/* Faça um programa que apresente os números de 1 a 15 na forma de um triangulo, como
apresentado a seguir:
1
2 3
4 5 6
7 8 9 10
11 12 13 14 15 */

#include <stdio.h>

int main(void)
{
    int num;
    for (num = 1; num <=15; num++) {
        printf("%d ", num);
        if (num == 1 || num == 3 || num == 6 || num == 10) {
            printf("\n");
        }
    }
    return 0;
}

//----------------------------------------------------------------------------------//
//Exercício 3
// Resolva o exercício anterior, utilizando apenas 1 laço.
// R: O exercício anterior foi feito usando apenas um laço.
//----------------------------------------------------------------------------------//

//Exercício 4
/* Faça um programa que apresente a tabela ASCII (0 a 127), no formato de 16 linhas por 16
colunas, tendo a 1° linha e a 1° coluna rotulada com o valor em hexadecimal de 0 a F. A
primeira célula terá o símbolo com código 0, a segunda com código 1 e assim por diante.
Obs: Inicialmente, substitua os valores < 32 por 32, para evitar a impressão dos códigos de
controle. */

#include <stdio.h>

int main() {
    int num, hexa, contador, limite;
    printf("%d ", 0);
    for (hexa = 0; hexa <= 15; hexa++) {
        printf("%x ", hexa);
    }
    printf("\n");

    contador = 0;
    limite = 15;
    for (hexa = 0; hexa <= 15; hexa++) {
       printf("%x ", hexa);
       for (num = contador; num <= limite; num++) {
            if (num < 32){
                printf("%c ", 32);
            }
            else {
                printf("%c ", num);
            } 
        }
        contador = num;
        limite = num + 15;
        printf("\n");
    }
    printf("\n");
}

//Outra forma de resolver o Exercício 4:

#include <stdio.h>

int main() {
    int num, hexa;
    printf("%x ", 0);
    for (hexa = 0; hexa <= 15; hexa++) {
        printf("%x ", hexa);
    }
    for (num = 0, hexa = 0; num <= 255; num++) {
            if (num % 16 == 0) {
                printf("\n");
                printf("%x ", hexa);
                hexa++;
            }
            if (num < 32) {
                printf("%c ", 32);
            }
            else {
                printf("%c ", num);
            }
        }
    printf("\n");
}

//----------------------------------------------------------------------------------//
//Exercício 5
// Faça um programa que apresente os números primos menores que 100

#include <stdio.h>

int main(){
    int num, aux, chave;

    for (num = 1; num <= 100; num++) {
        chave = 1;
        for (aux = num/2; aux > 1; aux--) {
            if (num % aux == 0) {
                chave = 0;
                continue;
            }
        }
        if (chave == 1){
            printf("%d ", num);
        }
    }
    printf("\n");
}

//----------------------------------------------------------------------------------//
