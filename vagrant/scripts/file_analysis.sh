#!/bin/bash

apt install pev -y
apt install -y clamav clamav-daemon
pip install oletools
pip2 install -U balbuzard
pip install LnkParse3

# get remote hash with reputation tools


cd /opt
git clone https://github.com/jesparza/peepdf
cd peepdf
sed -i 's/env python$/env python2/' peepdf.py
ln -s $PWD/peepdf.py /usr/local/bin/peepdf
