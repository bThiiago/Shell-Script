#!/bin/bash

teste="Eu sou uma variável"
echo $teste

# Comentário de múltiplas linhas
: '
echo "Olá Mundo!"
echo "Olá Mundo!"
echo "Olá Mundo!"
echo "Olá Mundo!"
echo "Olá Mundo!"
echo "Olá Mundo!"
echo "Olá Mundo!"
echo "Olá Mundo!"
echo "Olá Mundo!"
echo "Olá Mundo!"
'

# Comentário de uma linha
echo "Olá Mundo!"

echo "---> Executando o comando ls"
ls

echo "---> Executando o comando pwd"
pwd

echo "---> Executando o comando date"
date

echo "---> Executando o comando cal"
cal

echo "---> Executando o comando df"
df

echo "---> Executando o comando free"
free

echo "---> Executando o comando uname"
uname -a

echo "---> Executando o comando whoami"
whoami

echo "---> Executando o comando w"
w

echo "---> Executando o comando ps"
ps

echo "---> Executando o comando top"
top

echo "---> Executando o comando history"
history

echo "---> Executando o comando cd /home"
cd /home

echo "---> Executando o comando ls na pasta /home"
ls