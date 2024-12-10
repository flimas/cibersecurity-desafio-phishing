import os
import glob

def check_logs():
    log_dir = "/var/www/html"

    if not os.path.isdir(log_dir):
        print("Diretório de logs não encontrado. Certifique-se de que o SET foi executado corretamente.")
        return

    # Encontra o último arquivo com sufixo "harvester"
    files = glob.glob(f"{log_dir}/*harvester*")
    if not files:
        print("Nenhum arquivo de log com sufixo 'harvester' encontrado.")
        return

    latest_file = max(files, key=os.path.getmtime)
    print(f"Último arquivo de log encontrado: {latest_file}")

    # Procura por padrões de credenciais
    with open(latest_file, 'r') as f:
        lines = f.readlines()
    credentials = [line for line in lines if any(keyword in line.lower() for keyword in ["name", "username", "uname", "password", "psw"])]

    if credentials:
        print("Credenciais capturadas:")
        print("\n".join(credentials[-10:]))
    else:
        print("Nenhuma credencial encontrada no arquivo.")

if __name__ == "__main__":
    check_logs()
