#! /bin/bash

echo "Atualizar o sistema"
apt-get update -y
apt-get upgrade -y

echo "Sistema atualizado!"

echo "Instalando o Apache"
apt-get install apache2 -y
echo "Apache instalado!"

echo "Instalando Unzip"
apt-get install unzip -y
echo "Unzip instalado"

echo "Baixando conteúdo em tmp"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main

echo "Copiando para a pasta do site HTML"
cp -R * /var/www/html/
-


