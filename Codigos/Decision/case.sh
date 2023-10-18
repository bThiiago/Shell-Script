#!/bin/bash

opcao=$1

case $opcao in
    "start")
        echo "Iniciando o serviço."
        # Comandos para iniciar o serviço
        ;;
    "stop")
        echo "Parando o serviço."
        # Comandos para parar o serviço
        ;;
    "restart")
        echo "Reiniciando o serviço."
        # Comandos para reiniciar o serviço
        ;;
    *)
    echo "Opção inválida. Use 'start', 'stop' ou 'restart'."
        ;;
esac