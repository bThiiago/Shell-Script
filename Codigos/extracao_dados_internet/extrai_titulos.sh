ARQUIVO_DE_TITULOS="titulos.txt"

VERDE="\033[32;1m"
VERMELHO="\033[31;1m"

#testando no arch
[ ! -x "$(which lynx)" ] && sudo pacman -S lynx -y # Lynx instalado?

#debian like
#[ ! -x "$(which lynx)" ] && sudo apt install lynx -y # Lynx instalado?

                                            #substituindo tudo que começa com div e termina com line, por nada
                                            #depois tudo oq começa com span e tenha qualquer coisa.
lynx -source http://lxer.com/ | grep blurb | sed 's/<div.*line">//;s/<\/span.*//' > titulos.txt

while read -r titulo_lxer
do
  echo -e "${VERMELHO}Titulo: ${VERDE}$titulo_lxer"
done < "$ARQUIVO_DE_TITULOS"
