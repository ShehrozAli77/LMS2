#!/bin/bash
# Docker
# sudo apt-get update
# curl -fsSL https://get.docker.com -o get-docker.sh
# sudo sh get-docker.sh
# sudo apt install docker-compose -y
sudo snap install docker

#kube  Control
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

#MiniCube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
sudo groupadd docker
sudo usermod -aG docker $USER
# sudo reboot

mv .env-example .env
sudo docker-compose up