#!/bin/bash

# Verifica se o script está sendo executado como root
if [ "$(id -u)" != "0" ]; then
    echo "Este script precisa ser executado como root. Use 'sudo'." >&2
    exit 1
fi

# Atualiza os pacotes do sistema
echo "Atualizando pacotes do sistema..."
apt update && apt upgrade -y

# Verifica se o setoolkit está instalado
if ! command -v setoolkit &> /dev/null; then
    echo "SET não encontrado. Instalando agora..."
    apt install -y setoolkit
else
    echo "SET já está instalado."
fi

# Verifica e instala outras dependências úteis
echo "Verificando outras dependências..."
apt install -y net-tools # Para ifconfig

echo "Configuração concluída! Você pode iniciar o SET digitando 'setoolkit'."
