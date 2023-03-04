#!/bin/bash

echo -e "Desafio Dio IAC - Infraestrutura como Código : Script de Provisionamento de um Servidor Web (Apache) \n"

echo -e "Atualização e Instalação \n"

echo -e "Iniciando a Atualização dos Repositórios \n"
apt update -y
echo -e "Atualização realizada com Sucesso !\n\n"
sleep 2
clear

echo -e "Iniciando o Upgrade do Sistema \n"
apt upgrade -y
echo -e "Upgrade realizado com Sucesso !\n\n"
clear

echo -e "Iniciando a Instalação do Apache2 \n"
apt install apache2 -y
echo -e "Atualização realizada com Sucesso !\n\n"
sleep 2
clear

echo -e "Iniciando a Instalação do Unzip \n"
apt install unzip -y
echo -e "Instalação realizada com Sucesso !\n\n"
sleep 2
clear

echo -e "Realizando o Download dos Arquivos Web para o Diretório /tmp Aguarde... \n"
wget -c -P /tmp/ https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo -e "Download realizado com Sucesso !\n\n"
sleep 2
clear

echo -e "Descompactando Arquivos \n"
cd /tmp/
unzip main.zip
echo -e "Descompactação Completa !\n\n"
sleep 2
clear

echo -e "Copiando os Arquivos para o Diretório Apache em /var/www/html Aguarde... \n\n"
cp /tmp/linux-site-dio-main/* /var/www/html
cp -r /tmp/linux-site-dio-main/* /var/www/html
rm -r /tmp/linux-site-dio-main
echo -e "Copia realizada com Sucesso !\n\n"
sleep 2
clear

echo "Fim."

#Base pura:
#apt-get update
#apt-get upgrade -y
#apt-get install apache2 -y
#apt-get install unzip -y
#cd /tmp
#wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
#unzip main.zip
#cd /linux-site-dio-main
#cp -R * /var/www/html