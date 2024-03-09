#!/bin/bash

apt install binwalk -y
pip install flare-floss
pip install flare-capa
apt install yara -y
apt install pev -y
apt install -y clamav clamav-daemon
pip install oletools
pip install LnkParse3
pip2 install -U balbuzard


# get remote hash with reputation tools


cd /opt

# import capa-rules

git clone https://github.com/mandiant/capa-rules/archive/refs/tags/v7.0.1.zip
unzip v7.0.1.zip
rm -rf v7.0.1.zip

git clone https://github.com/jesparza/peepdf
cd peepdf
sed -i 's/env python$/env python2/' peepdf.py
ln -s $PWD/peepdf.py /usr/local/bin/peepdf
