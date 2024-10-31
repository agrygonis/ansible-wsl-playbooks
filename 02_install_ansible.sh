#!/bin/bash

# Atualizar o sistema e instalar dependências
echo "Atualizando o sistema..."
sudo apt update && sudo apt upgrade -y
sudo apt install -y software-properties-common

# Adicionar o repositório oficial do Ansible
echo "Adicionando o repositório do Ansible..."
sudo add-apt-repository --yes --update ppa:ansible/ansible

# Instalar o Ansible
echo "Instalando o Ansible..."
sudo apt install -y ansible

# Verificar a instalação
echo "Verificando a instalação do Ansible..."
ansible --version

# Exibir mensagem de sucesso
echo "Instalação do Ansible concluída com sucesso!"

