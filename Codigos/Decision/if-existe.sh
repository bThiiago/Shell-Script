#!/bin/bash
 
cd
ls -l 
read -p "Digite o nome do arquivo: " nome_arquivo

if [ -e $nome_arquivo ] 
then 
    echo "arquivo existe!" 
    if [ -r $nome_arquivo ]
    then 
        status="legível (Readable)" 
    fi 
    if [ -w $nome_arquivo ] 
    then 
        status=$status"gravável (Writable)" 
    fi 
    if [ -x $nome_arquivo ] 
    then 
        status=$status"executável (Executable)" 
    fi 
    echo "permissão do arquivo: "$status 
else 
    echo "arquivo não existe"
fi