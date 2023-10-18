#!/bin/bash

#Muito parecido com o For, pode praticamente fazer a mesma coisa porém uma definição mais claro entre os dois é que o For irá iniciar em um valor e irá parar quando chegar em outro definido, o while também pode trabalhar assim além de continuar no laço enquanto a condição for verdadeira.


#Exemplo 1
nome="joao pedro"

while [ "$nome" = "joao pedro" ];
do
echo "seu nome esta correto"
done

#Exemplo2


#valor inicial
var_control=0

while true;
do
#verifica se um valor é maior que o outro
if [ $var_control -gt 10 ]; then
break
fi

echo Valor $var_control

# Incrementando var_control, funciona apenas em Bash
(( var_control++ ))
done
