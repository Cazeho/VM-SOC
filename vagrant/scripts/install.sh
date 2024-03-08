#!/bin/bash

swapoff -a
apt update -y


# forensic basics

apt install python3-pip -y

apt install binutils -y
apt install foremost -y
apt install sleuthkit -y

apt install snapd -y
sudo snap install john-the-ripper

pip install dissect
