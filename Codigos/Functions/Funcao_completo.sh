#!/usr/bin/env bash

function VersaoLinux () {
   /usr/bin/lsb_release -ds
}

function CheckUser () {
   USER_ID=$(/usr/bin/id -u)
   return $USER_ID
}

function CheckGCC () {
   /usr/bin/gcc -v
}

function CheckPython () {
   /usr/bin/python --version
}

function CheckPerl () {
   /usr/bin/perl -v
}

function CheckSystem () {

   /usr/bin/clear
   # Macete para imprimir saida de funcao dentro do echo
   echo -e "\033[0;32m Distrubuição:\033[0mt$(VersaoLinux)"
   #echo -e "### Distribuição:t$(VersaoLinux)"

   echo -e "\033[0;32m Processador\033[0m"
   cat /proc/cpuinfo | grep "model name"

   echo -e "\033[0;32m Memoria\033[0m"
   /usr/bin/free -m

   echo -e "\033[0;32m Disco\033[0m"
   /bin/df -h
}

function CheckOptions () {
   if [ $1 = "python" ]; then
      CheckPython
   elif [ $1 = "perl" ]; then
      CheckPerl
   elif [ $1 = "gcc" ]; then
      CheckGCC
   elif [ $1 = "system" ]; then
      CheckSystem
   elif [ $1 = "all" ]; then
      CheckSystem
      CheckGCC
      CheckPerl
      CheckPython
   else
      echo -e "$1 é uma opção invalida!"
      #exit 1
      return
   fi

}


CheckUser
if [ $? -ne "0" ]; then
   echo -e "Voce não é root, execute como super-usuario!"
   exit 1
fi

while true;
do
   echo -e "Voce deve digitar um dos parametros abaixo para obter informacoes: "
   echo -e "python"
   echo -e "perl"
   echo -e "gcc"
   echo -e "system"
   echo -e "all"
   read -p "Opcao: " op

   CheckOptions $op

   read -p "Continuar? (S/N) " cont

   if [ $cont = "N" ] || [ $cont = "n" ]; then
      echo -e "Saindo..."
      exit 1
   fi
   #limpa o terminal
   /usr/bin/clear

done
