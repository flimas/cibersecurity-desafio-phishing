## Desafio de Simulação de Phishing com SET Toolkit

Este repositório contém a implementação do desafio de simulação de phishing proposto no bootcamp da Dio.me. Aqui você encontrará scripts automatizados, um guia passo a passo na wiki, e diversas ferramentas para explorar e aprender sobre segurança da informação de forma prática.

***
## 📚 Wiki
Na seção Wiki, você encontrará artigos detalhados sobre cada etapa do projeto:
- <a href="https://github.com/flimas/cibersecurity-desafio-phishing/wiki/Passo-a-Passo">Passo a Passo</a> da implementação do desafio
- <a href="https://github.com/flimas/cibersecurity-desafio-phishing/wiki/Detalhes-T%C3%A9cnicos">Detalhes técnico e aprendizagem</a> ao implementar o desafio.

Acesse a <a href="https://github.com/flimas/cibersecurity-desafio-phishing/wiki">Wiki</a> completa para explorar!

***
## ⚙️ Scripts

Bash
- setup_environment.sh:  Atualiza os pacotes do sistema, dependencias e verifica se o setoolkit está instalado
- run_phishing.sh: Configura e executa o ataque de phishing no SET Toolkit.
- check_logs.sh: Verifica o último log gerado pelo SET, busca credenciais e exibe os resultados.
- menu.sh: Apresenta um menu interativo para executar os scripts de forma simples.

Python
- run_phishing.py: Versão Python para configurar e executar o phishing no SET Toolkit.
- check_logs.py: Verifica o último log gerado, busca credenciais e exibe os resultados.
- menu.py: Menu interativo em Python para controlar todas as funcionalidades.

Os scripts estão organizados e podem ser executados de forma independente ou via menu.

***

## 📥 Como Usar
1. **Clone o Repositório:**
```
  git clone https://github.com/flimas/cibersecurity-desafio-phishing.git
  cd cibersecurity-desafio-phishing
```
2. **Configure o Ambiente (apenas para Bash):**
```
  bash setup_environment.sh
```
3. **Acesse o Menu (Bash ou Python):**
```
  bash phishing.sh
  # ou
  python3 phishing.py
```
4. **Leia a Wiki:**
Acesse os artigos diretamente no <a href="https://github.com/flimas/cibersecurity-desafio-phishing/wiki">GitHub Wiki</a>.

***
## 💡 Contribuições

Sinta-se à vontade para melhorar os scripts, seja otimizando o código, corrigindo bugs ou adicionando novas funcionalidades. Sugestões e pull requests são muito bem-vindos! 😄

Se você encontrou algum problema ou tem uma ideia para evoluir o projeto, abra uma issue no repositório. Vamos construir juntos!

***
## 🛡️ Considerações Finais

Este projeto tem fins exclusivamente educativos. A simulação de phishing e o uso de ferramentas como o SET Toolkit devem ser realizados de forma ética e em ambientes controlados. A prática em ambientes reais sem autorização é ilegal e contra os princípios de segurança.

***

# Phishing para captura de senhas do Facebook

### Ferramentas

- Kali Linux
- setoolkit

### Configurando o Phishing no Kali Linux

- Acesso root: ``` sudo su ```
- Iniciando o setoolkit: ``` setoolkit ```
- Tipo de ataque: ``` Social-Engineering Attacks ```
- Vetor de ataque: ``` Web Site Attack Vectors ```
- Método de ataque: ```Credential Harvester Attack Method ```
- Método de ataque: ``` Site Cloner ```
- Obtendo o endereço da máquina: ``` ifconfig ```
- URL para clone: http://www.facebook.com

### Resutados

![Alt text](./passwd.png "Optional title")
