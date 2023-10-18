#!/bin/bash 
 
read -p "Primeira String: " str1 
read -p "Segunda String: " str2 

if [ -z "$str1" ] 
then 
    echo "A primeira string é nula" 
elif [ -z "$str2" ] 
then 
    echo "A segunda string é nula" 
else 
    if [ $str1 == $str2 ] 
    then 
        echo "As strings são iguais" 
    else 
        echo "As strings são diferentes" 
    fi
fi