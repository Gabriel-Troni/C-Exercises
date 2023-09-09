//Exercício 1
/* Faça um programa que leia uma matriz de inteiros de 3x3 e apresente 
os elementos da diagonal principal. */

#include <stdio.h>
int num[3][3], i, j;

int main () {
    for(i=0; i<3; i++) {
        for(j=0; j<3; j++) {
            scanf("%d", &num[i][j]);
        }
    }
    for(i=0; i<3; i++) {
        for(j=0; j<3; j++) {
            if(i==j)
            printf("%d\n", num[i][j]);
        }
    }
}

//Exercício 2
/* Faça um programa que leia uma matriz de inteiros de 3x3 e apresente 
os elementos da diagonal secundária. */

#include <stdio.h>

int num[3][3], i, j;

int main () {
    for(i=0; i<3; i++) {
        for(j=0; j<3; j++) {
            scanf("%d", &num[i][j]);
        }
    }
    for(i=0, j=2; j>=0; i++, j--) {
            printf("%d\n", num[i][j]);
    }
}

//Exercício 3
/* Faça um programa que leia uma matriz de inteiros de 3x4 e apresente a 
soma de cada coluna. A saída deverá ter um número por linha. */

#include <stdio.h>

int num[3][4], i, j, soma=0;

int main() {
    for(i=0; i<3; i++) {
        for(j=0; j<4; j++) {
            scanf("%d", &num[i][j]);
        }
    }
    for(j=0; j<4; j++) {
        for(i=0; i<3; i++) {
            soma += num[i][j];
        }
        printf("%d\n", soma);
        soma=0;
    }
}

//Exercício 4
/* Faça um programa que leia uma matriz de inteiros de 3x4 e apresente os 
elementos em que a soma dos índices i e j sejam pares. Respeite a ordem de 
apresentação linha,coluna. A saída deverá ter um número por linha. */

#include <stdio.h>
int num[3][4], i, j, soma=0;

int main() {
    for(i=0; i<3; i++) {
        for(j=0; j<4; j++) {
            scanf("%d", &num[i][j]);
        }
    }
   for(i=0; i<3; i++) {
        for(j=0; j<4; j++) {
            if((i+j)%2==0) {
                printf("%d\n", num[i][j]);
                j++;            
            }
        }
    }
}

//Exercício 5
/* Faça um programa que leia 10 números, armazene-os em um vetor e 
apresente os 5 (cinco) números que estão nas posições ímpares. */

#include <stdio.h>
int num[10], i;

int main () {
    for(i=0; i<10; i++) {
            scanf("%d", &num[i]);
    }
    for(i=1; i<10; i+=2) {
        printf("%d\n", num[i]);
    }
}

//Exercício 6
/* Faça um programa que leia 10 valores e armazene-os em um vetor. Na sequência, 
leia dois valores inteiros que estejam entre 0 e 9 (índices a e b) e apresente 
os valores lidos (vetor) que estejam entre os índices a e b. */

#include <stdio.h>
int num[10], i, j;

int main() {
    for(i=0; i<10; i++) {
        scanf("%d", &num[i]);
    }
    scanf("%d", &i);
    scanf("%d", &j);
    for( ; i<=j; i++) {
        printf("%d\n", num[i]);
    }
    return 0;
}

//Exercício 7
/* Faça um programa que leia 10 valores e armazene-os em um vetor. Na sequência, 
apresente os valores do maior para o menor. */

#include <stdio.h>
int num[10], i, j, aux;

int main() {
    for(i=0; i<10; i++) {
        scanf("%d", &num[i]);
    }
    
    for(i=0; i<9; i++){
        for(j=0; j<9-i; j++){
            if(num[j] < num[j+1]) {
                aux = num[j+1];
                num[j+1] = num[j];
                num[j] = aux;
            }
            else continue;
        }
    }
    
    for(i=0; i<10; i++) {
        printf("%d\n", num[i]);
    }
    return 0;
}

//Exercício 8
/* Faça um programa que leia 10 valores e armazene-os em um vetor. Na sequência, 
apresente os valores contidos no vetor, onde a diferença entre os valores 
contidos em dois elementos sucessivos não seja maior do que um. */

#include <stdio.h>
int num[10], i;

int main() {
    for(i=0; i<10; i++) {
        scanf("%d", &num[i]);
    }
    for(i=0; i<9; i++) {
        if(num[i]-num[i+1]>=-1 && num[i]-num[i+1]<=1)
        printf("%d %d\n", num[i], num[i+1]);
        continue;
    }
}