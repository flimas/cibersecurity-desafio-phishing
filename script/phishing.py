import subprocess
import os

def run_setup_environment():
    print("Executando configuração do ambiente...")
    subprocess.run(["sh", "setup_environment.sh"])

def run_phishing():
    print("Iniciando ataque de phishing...")
    subprocess.run(["python3", "run_phishing.py"])

def run_check_logs():
    print("Verificando logs de credenciais...")
    subprocess.run(["python3", "check_logs.py"])
    input("Pressione Enter para voltar ao menu...")

def menu():
    while True:
        os.system('clear')
        print("==============================")
        print("    Menu de Automação")
        print("==============================")
        print("1) Configurar ambiente")
        print("2) Iniciar ataque de phishing")
        print("3) Verificar logs de credenciais")
        print("4) Sair")
        print("==============================")
        
        choice = input("Escolha uma opção: ").strip()

        if choice == "1":
            run_setup_environment()
        elif choice == "2":
            run_phishing()
        elif choice == "3":
            run_check_logs()
        elif choice == "4":
            print("Saindo...")
            break
        else:
            print("Opção inválida. Tente novamente.")
            input("Pressione Enter para continuar...")

if __name__ == "__main__":
    menu()
