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

// Exercício 2
/* Faça uma função que receba um vetor de char e um número positivo e retorne no 
vetor os valores ‘0’ e ‘1’ correspondente ao valor binário de cada posição do 
número. Considere números de até 32 bits. (Considere o vetor com 33 posições). 
Preserve os zeros a direita do digito significativo. */

#include <stdio.h>

void func(char vet[], int num) {
int i;
vet[32] = '\0';
for(i=31; i>=0; i--){
    vet[i] = num%2 + '0';
    num = num/2;
}
}

int main(void) {
int num;
char str[33];
scanf("%d",&num);
func(str,num);
printf("%s\n",str);
}


// Exercício 3
/* Dado um vetor com a capacidade de 33 elementos, sendo que os 32 primeiros 
elementos representam dígitos binários (0,1) e o 33 o terminador da string. O 
conteúdo deverá ser lido como uma String (gets). Apresente-os formatando-os de 
forma que sejam apresentados blocos de 4 dígitos e um espaço entre os 8 blocos. */

#include <stdio.h>

int main(void) {
    char txt[33];
    int i;
    gets( txt );
    for(i=0; i<32; i++){
        if(i && i%4==0)
            printf(" ");
        printf("%c", txt[i]);
    }
    txt[32] = '\0';
}


// Exercício 4 
/* Faça um programa que leia um número, chame uma função que converterá o número 
para binário, sem os dígitos não significativos a esquerda. No programa principal, 
apresente o vetor retornado usando o %s no printf. */

#include <stdio.h>
#include <string.h>

int num;
char vet[33];

void convert(int num) {
    char aux;
    int i, j;
    for(i=0; num>0; i++) {
        vet[i] = num%2 + '0';
        num = num/2;
    }
    for(i=0, j=strlen(vet)-1; j>i; i++, j--){
        aux = vet[i];
        vet[i] = vet[j];
        vet[j] = aux;
    }
}

int main() {
    scanf("%d", &num);
    convert(num);
    printf("%s", vet);
}


// Exercício 5
/* Faça um programa que leia uma String e apresente todos os seus prefixos.
Entrada: 
    pedra
saída:
    p
    pe
    ped
    pedr
    pedra
*/

#include <stdio.h>
#include <string.h>

char txt[30];
int i, contador;

int main(){
    fgets(txt, sizeof(txt), stdin);
    for(i=1; i<strlen(txt)-1; i++) {
        for(contador=0; contador<i; contador++)
            printf("%c", txt[contador]);
        printf("\n");
    }
}


// Exercício 6
/* Faça um programa que leia uma String e apresente todos os sufixos da string.
Entrada:
    pedra
saída:
    pedra
    edra
    dra
    ra
    a
*/

#include <stdio.h>
#include <string.h>

char txt[30];
int i, contador, tam;

int main(){
    fgets(txt, sizeof(txt), stdin);
    tam = strlen(txt);
    for(i=tam; i>1; i--) {
        for(contador=tam-i; contador<tam-1; contador++)
            printf("%c", txt[contador]);
        printf("\n");
    }
}

// Exercício 7
/* Faça um programa que leia uma string e apresente os símbolos e a frequência (número de ocorrência 
de cada símbolo na string lida). O programa deverá apresentar um símbolo e a frequência por linha e 
omitir os símbolos que não ocorram (frequência zero). Considere o intervalo de 32 a 128 da tabela 
ASCII.
Entrada
    ana
Saída
    a 2
    n 1
*/

#include <stdio.h>
#include <string.h>

int i, j, contador=0;
char txt[30], aux;

int main(){
    fgets(txt, sizeof(txt), stdin);
    for(i=0; i<strlen(txt)-1; i++){
        for(j=0; j<strlen(txt)-2; j++){
            if(txt[j]>txt[j+1]){
                aux = txt[j];
                txt[j] = txt[j+1];
                txt[j+1] = aux;
            }
        }
    }
    for(i=0; i<strlen(txt)-1; i++){
        if(txt[i] > 32 && txt[i] < 128){
            contador++;
            if(txt[i] == txt[i+1]){
                continue;
            } else {
                printf("%c %d\n", txt[i], contador);
                contador = 0;
            }
        }
    }
}

// Exercício 8
/* Faça um programa que leia duas Strings, verifique se elas formam anagramas, 
ignorando variação de caixa e espaços em brancos e apresente: “Formam anagramas” 
ou “Nao formam anagramas”

Entrada
    roma
    amor
Saída
    Formam anagramas 
*/

#include <stdio.h>
#include <string.h>

int i, j;
char input1[30], input2[30], txt1[30], txt2[30], aux;

int main(){
    fgets(input1, sizeof(input1), stdin);
    fgets(input2, sizeof(input2), stdin);
    
    for(i=0, j=0; i<strlen(input1)-1; i++){
        if(input1[i] != 32){
            txt1[j] = input1[i];
            j++;
        }   
    }
    for(i=0, j=0; i<strlen(input2)-1; i++){
        if(input2[i] != 32){
            txt2[j] = input2[i];
            j++;
        }   
    }
    
    if(strlen(txt1) != strlen(txt2)){
        printf("Nao formam anagramas");
        return 0;
    }
        
    for(i=0; i<strlen(txt1); i++){
        if(txt1[i] >= 65 && txt1[i]<= 90)
            txt1[i] += 32;
        if(txt2[i] >= 65 && txt2[i]<= 90)
            txt2[i] += 32;
    }
    
    for(i=0; i<strlen(txt1)-1; i++){
        for(j=0; j<strlen(txt1)-1; j++){
            if(txt1[j]>txt1[j+1]){
                aux = txt1[j];
                txt1[j] = txt1[j+1];
                txt1[j+1] = aux;
            }
            if(txt2[j]>txt2[j+1]){
                aux = txt2[j];
                txt2[j] = txt2[j+1];
                txt2[j+1] = aux;
            } 
        }
    }
    
    for(i=0; i<strlen(txt1)-1; i++){
        if(txt1[i] != txt2[i]){
            printf("Nao formam anagramas");
            return 0;
        }
    }
    printf("Formam anagramas");
}
















    
    
    
    
    
    