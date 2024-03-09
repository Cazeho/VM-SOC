#!/bin/bash

apt install binwalk -y
pip install flare-floss
pip install flare-capa
apt install yara -y
apt install pev -y
apt install -y clamav clamav-daemon
pip install oletools
pip install LnkParse3
python3 -m pip install -U malwoverview
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

cd /opt
mkdir tools
cd tools

wget https://raw.githubusercontent.com/DidierStevens/DidierStevensSuite/master/pdf-parser.py
wget https://raw.githubusercontent.com/DidierStevens/DidierStevensSuite/master/zipdump.py
wget https://raw.githubusercontent.com/DidierStevens/DidierStevensSuite/master/pecheck.py
wget https://raw.githubusercontent.com/DidierStevens/DidierStevensSuite/master/pdfid.py
wget https://raw.githubusercontent.com/DidierStevens/DidierStevensSuite/master/base64dump.py

ln -s $PWD/pdf-parser.py /usr/local/bin/pdf-parser
ln -s $PWD/zipdump.py /usr/local/bin/zipdump
ln -s $PWD/pecheck.py /usr/local/bin/pecheck
ln -s $PWD/pdfid.py /usr/local/bin/pdfid
ln -s $PWD/base64dump.py /usr/local/bin/base64dump
