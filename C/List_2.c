// Exercício 1
/* Faça um programa que leia uma tecla e apresente o código ASCII da tecla 
seguido de quebra de linha. */

#include <stdio.h>
#include <stdlib.h>
char tecla;

int main() {
    scanf("%c", &tecla);
    printf("%d\n", tecla);
    return 0;
}

// Exercício 2
/* Faça um programa que leia um número N e apresente todos os divisores de N 
(do menor para o maior, de 1 a N-1). */

#include <stdio.h>
#include <stdlib.h>
int num, divisor;

int main() {
    scanf("%d", &num);
    for(divisor=1; divisor<=num/2; divisor++) {
        if(num%divisor == 0) {
            printf("%d\n", divisor);
        }
    }
    return 0;
}

// Exercício 3
/* Faça um programa que apresente os números de 1 a 20, cada número em uma linha. */

#include <stdio.h>
#include <stdlib.h>
int i;

int main() {
    for(i=1; i!=21; i++) {
        printf("%d\n",i);
    }
    return 0;
}

// Exercício 4
/* Faça um programa que apresente os números de pares de 0 a 20, cada número em uma linha. */

#include <stdio.h>
#include <stdlib.h>
int i;

int main() {
    for(i=0; i<21; i+=2) {
        printf("%d\n",i);
    }
    return 0;
}

// Exercício 5
/* Faça um programa que apresente os números de 20 a 1 (em ordem decrescente), 
um número em cada linha. */

#include <stdio.h>
#include <stdlib.h>
int i;

int main() {
    for(i=20; i!=0; i--) {
        printf("%d\n",i);
    }
    return 0;
}

// Exercício 6
/* Faça um programa que leia 10 números inteiros e apresente o maior 
(não utilize vetor/matriz). */

#include <stdio.h>
#include <stdlib.h>
int num, maior, i;

int main() {
    scanf("%d", &num);
    if(num<0)
    maior=num;
    for(i=2; i<=10; i++) {
        scanf("%d", &num);
        if(num>maior)
        maior=num;
    }
    printf("%d", maior);
    return 0;
}

// Exercício 7
/* Faça um programa que leia uma lista de números inteiros terminados por 0, para 
cada número lido o programa deve informar o número e se o número é par ou ímpar. 
Não utilize vetores/matrizes. mostre apenas "par" ou "impar" (sem acentos). */

#include <stdio.h>

int num;

int main() {
    while (1) {
        scanf("%d", &num);
        if (!num)
            break;
        else if (num%2)
            printf("%d impar", num);
        else
            printf("%d par", num);
    }
}

//Exercício 8
/* Faça um programa que leia três números e os apresente em ordem crescente.
Apresente um número por linha. */

#include <stdio.h>

int i, j, num[3], aux;

int main()
{
    //Lê os números
    for(i=0; i<3; i++)
    scanf("%d", &num[i]);
    
    //Ordena vetor
    for(i=0; i<2; i++)
        for(j=0; j<2; j++) {
            if(num[j]>num[j+1]) {
                aux=num[j+1];
                num[j+1]=num[j];
                num[j]=aux;
            }
            
        }
    
    //Imprime resultado
    for(i=0; i<3; i++)
    printf("%d\n", num[i]);
}

//Exercício 9
/* Faça um programa que leia um número de ponto flutuante e apresente em linhas 
separadas a parte inteira e a parte fracionária. */

#include <stdio.h>

float num, fracionario; 
int inteiro;

int main() {
    scanf("%f", &num);
    inteiro = (int)num;
    fracionario = num-inteiro;
    printf("%d\n%f", inteiro, fracionario);
}

//Exercício 10
/* Faça um programa que leia dois números A e B e apresente o maior divisor 
comum dos dois números. */

#include <stdio.h>
int maior, menor, aux, divisor;

int main() {
    scanf("%d", &maior);
    scanf("%d", &menor);
    
    if (menor>maior) {
        aux=maior;
        maior=menor;
        menor=aux;
    }
    
    for(divisor=menor; divisor>0; divisor--)
        if(menor%divisor==0 && maior%divisor==0) {
            printf("%d", divisor);
            break;
        }
}