#!/bin/bash

swapoff -a
apt update -y

apt install snapd -y
snap install john-the-ripper

# forensic basics

apt install python3-pip -y

apt install binutils -y
apt install foremost -y
apt install sleuthkit -y



pip install dissect
pip install oletools
pip install LnkParse3
python3 -m pip install -U malwoverview
pip install flare-floss
pip install flare-capa
