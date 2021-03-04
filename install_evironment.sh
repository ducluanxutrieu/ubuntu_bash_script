#!/bin/bash
echo "update"
sudo apt update
sudo apt upgrade -y

echo 'install teams'
wget https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.3.00.30857_amd64.deb
sudo apt install ./teams_1.3.00.30857_amd64.deb

echo 'install code'
wget https://az764295.vo.msecnd.net/stable/622cb03f7e070a9670c94bae1a45d78d7181fbd4/code_1.53.2-1613044664_amd64.deb
sudo apt install ./code_1.53.2-1613044664_amd64.deb

echo 'install chrome'
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

echo 'install terraform'
chmod +x install_terraform.sh
./install_terraform.sh || true

echo 'install kubectl'
chmod +x install_kubectl.sh
./install_kubectl.sh || true

echo 'install bamboo'
chmod +x install_bamboo.sh
./install_bamboo.sh || true

echo 'install bamboo'
chmod +x install_minikube.sh
./install_minikube.sh || true

echo 'install bamboo'
chmod +x install_virtual_box.sh
./install_virtual_box.sh || true