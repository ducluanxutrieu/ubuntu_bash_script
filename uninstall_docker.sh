#!/bin/bash
sudo apt-get purge docker-ce docker-ce-cli containerd.io -y
sudo rm -rf /var/lib/docker
sudo apt remove docker-compose -y
sudo rm /usr/local/bin/docker-compose
sudo apt autoremove