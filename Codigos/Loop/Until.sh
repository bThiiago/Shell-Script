#!/bin/bash

#Imagine o oposto do While, pois é esse é o until, no while enquanto é executado o laço enquanto a condição é verdadeira no until é executado enquanto for falsa.

response=yes
count=0

until [ "$response" = "no" ];
do
(( count++ ))

echo "Laco $count"

#verifica a igualdade
if [ $count -eq 5 ];
#verifica se o valor a esquerda é maior ou igual ao valor da esquerda.
#if [ $count -ge 5 ];
then
response=no
fi

sleep 1
done
