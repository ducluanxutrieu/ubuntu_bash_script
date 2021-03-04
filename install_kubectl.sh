#!/bin/bash
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
#Download the kubectl checksum file:
echo 'Download the kubectl checksum file'
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
#Validate the kubectl binary against the checksum file
echo "Validate the kubectl binary against the checksum file"
echo "$(<kubectl.sha256) kubectl" | sha256sum --check
echo "install kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
kubectl version --client

