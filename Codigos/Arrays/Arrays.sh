#!/bin/bash

num[0]="10"
num[1]="20"
num[2]="30"
num[3]="40"
num[4]="50"

nomes=("Cleiton" "Manoel" "Pedro" "Paulo")

# O que diferencia de uma variavel comun é o ${ } e dentro o array com a posição
echo "Numero 2 : ${num[1]}"
echo "Numero 4 : ${num[3]}"
echo "Nome 1 : ${nomes[0]}"
echo "Nome 4 : ${nomes[3]}"

#imprimir as posicoes com os valores
for ((i = 0; i < ${#num[@]}; i++))
do
    echo "Posicao $i: ${num[i]}"
done
