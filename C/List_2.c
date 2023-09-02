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