#!/bin/bash

swapoff -a
apt update -y
curl -s https://raw.githubusercontent.com/Cazeho/download_project/main/docker_ubuntu.sh | sh

# forensic basics

apt install python3-pip -y

apt install binutils -y
apt install foremost -y
apt install sleuthkit -y

apt install snapd -y
snap install john-the-ripper -y

pip install dissect
