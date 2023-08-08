// Exercício 1

#include <stdio.h>

int main(void){
    int i, j;
    for (i = 1, j = 2; i <= 9; i = i+2, j = j+2) {
        printf("\t%d\n%d\n", i, j);
    }
    
} 
