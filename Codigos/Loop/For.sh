#!/bin/bash
#Exemplo 1
echo "Contando ate 5"
for i in 1 2 3 4 5;
do
echo $i;
done

#Exemplo 2
echo "Contando ate 10"
for i in $(seq 10);
do
echo $i;
done

#Exemplo 3
echo "Contando ate 5 estilo C"
for ((i=0; i<=5; i++))
do
echo "Executando o $i"
done
