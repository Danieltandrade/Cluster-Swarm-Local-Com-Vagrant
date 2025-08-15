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
- [Conclusão](#conclusão)

## Visão Geral

O ambiente é composto por duas máquinas virtuais:
- **master**: Nó principal do cluster Swarm.
- **node01**: Worker do cluster.

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

5. **Criando serviços no Swarm:**
   ```bash
   docker service create --name nginx --publish 8080:80 --replicas 2 nginx
   ```
   O serviço criado pode ser acessado em `http://10.10.10.100:8080`.
   Os container foram criados utilizando a imagem oficial do Nginx, que é um servidor web leve e de alto desempenho.

6. **Verificando serviços em execução:**

   6.1 **Listando serviços:**
      ```bash
      docker service ls
      ```
   6.2 **Listando containers de um serviço:**
      ```bash
      docker service ps nginx
      ```

## Comandos Úteis Vagrant

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

## Conclusão

Este projeto fornece uma maneira fácil e rápida de configurar um cluster Docker Swarm local para fins de teste e desenvolvimento. Com o uso do Vagrant e do VirtualBox, é possível simular um ambiente de produção com múltiplos nós, facilitando o aprendizado e a experimentação com a orquestração de containers.
Espero que gostem e sintam-se à vontade para contribuir!
