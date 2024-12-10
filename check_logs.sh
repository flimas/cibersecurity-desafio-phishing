#!/bin/bash

# Diretório onde os logs do phishing estão armazenados
LOG_DIR="/var/www/html"

# Verifica se o diretório existe
if [ ! -d "$LOG_DIR" ]; then
    echo "Diretório de logs não encontrado. Certifique-se de que o SET foi executado corretamente." >&2
    exit 1
fi

# Encontra o último arquivo modificado no diretório
LATEST_FILE=$(find "$LOG_DIR" -name "*harvester*" -type f -printf "%T@ %p\n" | sort -n | tail -1 | cut -d' ' -f2-)

if [ -z "$LATEST_FILE" ]; then
    echo "Nenhum arquivo de log encontrado no diretório $LOG_DIR." >&2
    exit 1
fi

echo "Último arquivo de log encontrado: $LATEST_FILE"
echo "Buscando possíveis credenciais no arquivo..."

# Procura por padrões comuns de campos de login e senha
echo "Credenciais capturadas (se houver):"
grep -Ei "name|username|uname|password|psw" "$LATEST_FILE" | tail -n 10 || echo "Nenhuma credencial encontrada no arquivo."

# Exibe o caminho do arquivo para análise manual, se necessário
echo
echo "Se precisar, você pode verificar manualmente o arquivo em: $LATEST_FILE"
