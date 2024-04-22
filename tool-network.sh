#!/usr/bin/env bash
#Atualização de repositórios e pacotes
sudo apt upgrade
sudo apt update

#Instalação das aplicações
sudo apt install -y nmap neofetch snmp speedtest-cli ipcalc traceroute mtr whois

#Instalação Blacklist check
git clone https://github.com/adionditsak/blacklist-check-unix-linux-utility.git
cd blacklist-check-unix-linux-utility
sudo chmod +x ./bl
sudo mv ./bl /usr/local/bin
cd ~

#Personalização NeoFetch
cp /home/$USER/.bashrc .bashrc-bak
echo neofetch >> /home/$USER/.bashrc

#Validação
echo "Tudo certo meu patrão!!!"

echo "Foram instaladas um conjunto de ferramentas de rede, incluindo o Nmap, uma Calculadora de IP, e uma ferramenta para checar IP em Blacklists."
echo "Para usar as ferramentas, seguem os comandos e sintaxes:"
echo "Nmap: nmap <ip> -p <porta>"
echo "Calculadora IP: ipcalc <ip/mask>"
echo "Verificação de Blacklist: bl <ip>"
