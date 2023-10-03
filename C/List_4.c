//Exercício 1
/* Faça um programa que leia uma frase e apresente o número de palavras lidas. */

#include <stdio.h>
#include <string.h>

int i=0, contador=1;
char texto[100];
    
int main() {
fgets(texto, sizeof(texto), stdin);
while(texto[i]) {
    if(texto[i] == 32)
        contador++;
    i++;
}
printf("%d", contador);
}