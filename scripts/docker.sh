#!/bin/bash
# Atualizando pacotes do sistema operacional
sudo apt-get update
sudo apt-get upgrade -y
# Instalando Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
# Instalando Docker Compose V2
sudo apt-get install -y docker-compose-plugin
sudo usermod -aG docker vagrant
