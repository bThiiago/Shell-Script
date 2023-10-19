#!/bin/bash

portas=("137" "138" "139" "445" "22" "80" "443")
protocol_portas=("udp" "udp" "tcp" "tcp" "tcp" "tcp" "tcp")
desc_portas=("NetBIOS" "NetBIOS" "NetBIOS" "SMB" "SSH" "HTTP" "HTTPS")

echo -e "Exemplo de regras para firewall com descricao e identificacao de protocolo"
echo -e "SERVICO PORTA PROTOCOLO STATUS"
for ((i=0; i<${#portas[@]}; i++))
do
if [ "${protocol_portas[$i]}" = "tcp" ];
then
iptables -A INPUT -p tcp --dport ${portas[$i]} -j DROP
echo -e "${desc_portas[$i]} ${portas[$i]}TCP BLOQUEADO"
elif [ "${protocol_portas[$i]}" = "udp" ];
then
iptables -A INPUT -p udp --dport ${portas[$i]} -j DROP
echo -e "${desc_portas[$i]} ${portas[$i]}UDP BLOQUEADO"
fi
done
