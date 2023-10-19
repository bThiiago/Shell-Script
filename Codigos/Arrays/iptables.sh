#!/bin/bash

PORT=("137" "138" "139" "445" "22" "80" "443")

echo -e "nExemplo de regras para firewall"
#@ é para percorrer todo o array
for porta in ${PORT[@]}
do
echo "Bloqueando a porta $porta"
iptables -A INPUT -p udp --dport $porta -j DROP
iptables -A INPUT -p tcp --dport $porta -j DROP
done
