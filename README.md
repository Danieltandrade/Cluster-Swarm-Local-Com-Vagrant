# Cluster Swarm Local com Vagrant

[![Docker](https://img.shields.io/badge/Docker-28.3.3-blue.svg)](https://www.docker.com/)
[![Vagrant](https://img.shields.io/badge/Vagrant-2.4.8-blue.svg)](https://www.vagrantup.com/)
[![Build Status](https://img.shields.io/badge/Build-passing-brightgreen.svg)](https://github.com/seu-usuario/Cluster-Swarm-Local-Com-Vagrant/actions)
[![License](https://img.shields.io/badge/License-Apache%202.0-red.svg)](LICENSE)

Este projeto permite criar um cluster Docker Swarm local utilizando Vagrant e VirtualBox. Ideal para testes, estudos e simulações de ambientes de orquestração de containers.

## Sumário

- [Visão Geral](#visão-geral)
- [Pré-requisitos](#pré-requisitos)
- [Estrutura do Projeto](#estrutura-do-projeto)
- [Como Utilizar](#como-utilizar)
- [Comandos Úteis](#comandos-úteis)
- [Licença](#licença)

## Visão Geral

O ambiente é composto por três máquinas virtuais:
- **master**: Nó principal do cluster Swarm.
- **node01**: Worker do cluster.
- **node02**: Worker do cluster.

Todas as VMs utilizam Ubuntu 24.04 e são configuradas automaticamente para formar um cluster Docker Swarm.

## Pré-requisitos

- [Vagrant](https://www.vagrantup.com/) (versão 2.x ou superior)
- [VirtualBox](https://www.virtualbox.org/) (versão mais recente)
- Git (opcional, para clonar o projeto)

## Estrutura do Projeto

```
├── Vagrantfile         # Configuração das VMs e do cluster
├── docker.sh           # Instalação do Docker e Docker Compose
├── master.sh           # Inicialização do Swarm no nó master
├── worker.sh           # Script para os workers ingressarem no cluster
├── README.md           # Este arquivo
└── LICENSE             # Licença do projeto
```

## Como Utilizar

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/Danieltandrade/Cluster-Swarm-Local-Com-Vagrant.git
   cd Cluster-Swarm-Local-Com-Vagrant
   ```

2. **Inicie o ambiente:**
   ```bash
   vagrant up
   ```

3. **Acesse as máquinas:**
   ```bash
   vagrant ssh master
   vagrant ssh node01
   ```

4. **Verifique o cluster Swarm:**
   ```bash
   docker node ls
   ```

## Comandos Úteis

- **Parar as VMs:**
  ```bash
  vagrant halt
  ```
- **Destruir o ambiente:**
  ```bash
  vagrant destroy -f
  ```
- **Recriar o ambiente:**
  ```bash
  vagrant up --provision
  ```

## Licença

Este projeto está licenciado sob a [Apache License 2.0](LICENSE).
