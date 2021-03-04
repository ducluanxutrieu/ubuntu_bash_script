#!/bin/bash
#
yes "" | sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo
sudo apt-get update
sudo apt-get install ibus-bamboo -y
ibus restart
